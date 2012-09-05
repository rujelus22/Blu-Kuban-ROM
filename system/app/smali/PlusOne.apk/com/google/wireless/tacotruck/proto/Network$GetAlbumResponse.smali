.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAlbumResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

.field private static final serialVersionUID:J


# instance fields
.field private albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I

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
    .line 16072
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    .line 16073
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->initFields()V

    .line 16074
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15617
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15666
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

    .line 15698
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedSerializedSize:I

    .line 15618
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15612
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15619
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15666
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

    .line 15698
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedSerializedSize:I

    .line 15619
    return-void
.end method

.method static synthetic access$21000(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15612
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15612
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15612
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$21202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15612
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 1

    .prologue
    .line 15623
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 15663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    .line 15664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 15665
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 15790
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->access$20800()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15726
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->access$20700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 15659
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15612
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2

    .prologue
    .line 15627
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 15645
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 15642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

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
    .line 15635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 15649
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

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
    .line 15639
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 15700
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedSerializedSize:I

    .line 15701
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 15713
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 15703
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 15704
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 15705
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15704
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 15708
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 15709
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15712
    :cond_30
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 15713
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasAlbumInfo()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15656
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15668
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

    .line 15669
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 15684
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 15669
    goto :goto_9

    .line 15671
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 15672
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 15673
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 15674
    goto :goto_9

    .line 15671
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 15677
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->hasAlbumInfo()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 15678
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 15679
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 15680
    goto :goto_9

    .line 15683
    :cond_38
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->memoizedIsInitialized:B

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
    .line 15720
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

    .line 15689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getSerializedSize()I

    .line 15690
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 15691
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15690
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15693
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 15694
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15696
    :cond_27
    return-void
.end method
