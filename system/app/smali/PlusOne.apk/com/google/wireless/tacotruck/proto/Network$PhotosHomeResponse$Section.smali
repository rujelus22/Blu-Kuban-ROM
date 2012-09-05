.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cover_:Ljava/util/List;
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

.field private notificationCount_:I

.field private timestampMsec_:J

.field private totalCount_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39696
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    .line 39697
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->initFields()V

    .line 39698
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39066
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39195
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedIsInitialized:B

    .line 39230
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedSerializedSize:I

    .line 39067
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39068
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39195
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedIsInitialized:B

    .line 39230
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedSerializedSize:I

    .line 39068
    return-void
.end method

.method static synthetic access$54702(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    return-object p1
.end method

.method static synthetic access$54802(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I

    return p1
.end method

.method static synthetic access$54900(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39061
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$54902(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$55002(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$55102(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I

    return p1
.end method

.method static synthetic access$55202(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39061
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 1

    .prologue
    .line 39072
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 39189
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39190
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I

    .line 39191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    .line 39192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J

    .line 39193
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I

    .line 39194
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 1

    .prologue
    .line 39334
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->access$54500()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCover(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 39161
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getCoverCount()I
    .registers 2

    .prologue
    .line 39158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoverList()Ljava/util/List;
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
    .line 39151
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    return-object v0
.end method

.method public getCoverOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 39165
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getCoverOrBuilderList()Ljava/util/List;
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
    .line 39155
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39061
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 2

    .prologue
    .line 39076
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 39185
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 39232
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedSerializedSize:I

    .line 39233
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 39257
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 39235
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 39236
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 39237
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 39240
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 39241
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 39244
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 39245
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 39244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 39248
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 39249
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 39252
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    .line 39253
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 39256
    :cond_60
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedSerializedSize:I

    move v2, v1

    .line 39257
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 39175
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 39144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 2

    .prologue
    .line 39134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    return-object v0
.end method

.method public hasNotificationCount()Z
    .registers 3

    .prologue
    .line 39182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 39172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

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

.method public hasTotalCount()Z
    .registers 3

    .prologue
    .line 39141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39131
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

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

    .line 39197
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedIsInitialized:B

    .line 39198
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 39207
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 39198
    goto :goto_9

    .line 39200
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getCoverCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 39201
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getCover(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 39202
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedIsInitialized:B

    move v2, v3

    .line 39203
    goto :goto_9

    .line 39200
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 39206
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->memoizedIsInitialized:B

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
    .line 39264
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 39212
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getSerializedSize()I

    .line 39213
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 39214
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39216
    :cond_15
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 39217
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39219
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 39220
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39219
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 39222
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 39223
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 39225
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_51

    .line 39226
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39228
    :cond_51
    return-void
.end method
