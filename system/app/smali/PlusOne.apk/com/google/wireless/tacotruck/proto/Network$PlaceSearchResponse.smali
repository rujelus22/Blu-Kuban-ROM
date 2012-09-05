.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private place_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation
.end field

.field private query_:Ljava/lang/Object;

.field private searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27211
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    .line 27212
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->initFields()V

    .line 27213
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26678
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26760
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedIsInitialized:B

    .line 26789
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedSerializedSize:I

    .line 26679
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26673
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26760
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedIsInitialized:B

    .line 26789
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedSerializedSize:I

    .line 26680
    return-void
.end method

.method static synthetic access$37300(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26673
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$37302(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$37402(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37502(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object p1
.end method

.method static synthetic access$37602(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26673
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 1

    .prologue
    .line 26684
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    return-object v0
.end method

.method private getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26734
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    .line 26735
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26736
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26738
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    .line 26741
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
    .line 26756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    .line 26757
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    .line 26758
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 26759
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    .registers 1

    .prologue
    .line 26885
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->access$37100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26821
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;->access$37000(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;
    .registers 2

    .prologue
    .line 26688
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;

    return-object v0
.end method

.method public getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 26706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getPlaceCount()I
    .registers 2

    .prologue
    .line 26703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlaceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26696
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 26710
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;

    return-object v0
.end method

.method public getPlaceOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26700
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26720
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    .line 26721
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26722
    check-cast v1, Ljava/lang/String;

    .line 26730
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26724
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26726
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26727
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26728
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26730
    goto :goto_8
.end method

.method public getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 26752
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26791
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedSerializedSize:I

    .line 26792
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 26808
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 26794
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 26795
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 26796
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26795
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 26799
    :cond_23
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 26800
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26803
    :cond_32
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 26804
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 26807
    :cond_40
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 26808
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26717
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearchEvent()Z
    .registers 3

    .prologue
    .line 26749
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 26762
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedIsInitialized:B

    .line 26763
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 26772
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 26763
    goto :goto_9

    .line 26765
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlaceCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 26766
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 26767
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 26768
    goto :goto_9

    .line 26765
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 26771
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->memoizedIsInitialized:B

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
    .line 26815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 26777
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getSerializedSize()I

    .line 26778
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 26779
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->place_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26778
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 26781
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 26782
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26784
    :cond_29
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 26785
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponse;->searchEvent_:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26787
    :cond_35
    return-void
.end method
