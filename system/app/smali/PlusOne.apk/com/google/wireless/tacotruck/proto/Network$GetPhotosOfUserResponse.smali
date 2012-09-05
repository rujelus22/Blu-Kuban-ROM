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
    .line 36014
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    .line 36015
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->initFields()V

    .line 36016
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35500
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 35559
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 35591
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 35501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35495
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35502
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 35559
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 35591
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 35502
    return-void
.end method

.method static synthetic access$49800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35495
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$49802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35495
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$49900(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35495
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$49902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35495
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 1

    .prologue
    .line 35506
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 35556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    .line 35557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    .line 35558
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 35683
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->access$49600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 35619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->access$49500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 35527
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getApprovedPhotoCount()I
    .registers 2

    .prologue
    .line 35524
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
    .line 35517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public getApprovedPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 35531
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
    .line 35521
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35495
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2

    .prologue
    .line 35510
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 35593
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    .line 35594
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 35606
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 35596
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 35597
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 35598
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35597
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 35601
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 35602
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 35601
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 35605
    :cond_3c
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 35606
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 35548
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getUnapprovedPhotoCount()I
    .registers 2

    .prologue
    .line 35545
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
    .line 35538
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public getUnapprovedPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 35552
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
    .line 35542
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35561
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    .line 35562
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 35577
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 35562
    goto :goto_9

    .line 35564
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 35565
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 35566
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 35567
    goto :goto_9

    .line 35564
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 35570
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_3c

    .line 35571
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_39

    .line 35572
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 35573
    goto :goto_9

    .line 35570
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 35576
    :cond_3c
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->memoizedIsInitialized:B

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
    .line 35613
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
    .line 35582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getSerializedSize()I

    .line 35583
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 35584
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35583
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 35586
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 35587
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35586
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 35589
    :cond_33
    return-void
.end method
