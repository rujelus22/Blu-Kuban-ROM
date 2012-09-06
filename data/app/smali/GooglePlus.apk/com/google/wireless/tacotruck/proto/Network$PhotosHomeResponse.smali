.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotosHomeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;,
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private section_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40847
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    .line 40848
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->initFields()V

    .line 40849
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39819
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40523
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedIsInitialized:B

    .line 40546
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedSerializedSize:I

    .line 39820
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39814
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39821
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40523
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedIsInitialized:B

    .line 40546
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedSerializedSize:I

    .line 39821
    return-void
.end method

.method static synthetic access$56500(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39814
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$56502(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39814
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 1

    .prologue
    .line 39825
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 40521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    .line 40522
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 1

    .prologue
    .line 40634
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->access$56300()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->access$56200(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39814
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2

    .prologue
    .line 39829
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    return-object v0
.end method

.method public getSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 3
    .parameter "index"

    .prologue
    .line 40513
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    return-object v0
.end method

.method public getSectionCount()I
    .registers 2

    .prologue
    .line 40510
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40503
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    return-object v0
.end method

.method public getSectionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 40517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;

    return-object v0
.end method

.method public getSectionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40507
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 40548
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedSerializedSize:I

    .line 40549
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 40557
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 40551
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 40552
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 40553
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 40552
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 40556
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 40557
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40525
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedIsInitialized:B

    .line 40526
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 40535
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 40526
    goto :goto_9

    .line 40528
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getSectionCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 40529
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 40530
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 40531
    goto :goto_9

    .line 40528
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 40534
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39814
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 40635
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39814
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 40639
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

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
    .line 40564
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
    .line 40540
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getSerializedSize()I

    .line 40541
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 40542
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40541
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 40544
    :cond_1b
    return-void
.end method
