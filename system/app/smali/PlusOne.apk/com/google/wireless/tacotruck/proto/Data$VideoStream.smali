.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private formatId_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamUrl_:Ljava/lang/Object;

.field private videoHeight_:I

.field private videoWidth_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15164
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    .line 15165
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->initFields()V

    .line 15166
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14648
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 14812
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 14649
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14650
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 14812
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 14650
    return-void
.end method

.method static synthetic access$20002(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    return p1
.end method

.method static synthetic access$20202(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    return p1
.end method

.method static synthetic access$20302(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    return p1
.end method

.method static synthetic access$20402(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14643
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 1

    .prologue
    .line 14654
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method private getStreamUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14739
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 14740
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14741
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14743
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 14746
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 14782
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    .line 14783
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    .line 14784
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    .line 14785
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 14912
    #calls: Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->access$19800()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14643
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 2

    .prologue
    .line 14658
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    return-object v0
.end method

.method public getFormatId()I
    .registers 2

    .prologue
    .line 14777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    .line 14815
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 14835
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 14817
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 14818
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 14819
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14822
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 14823
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14826
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 14827
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14830
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 14831
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14834
    :cond_44
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedSerializedSize:I

    move v1, v0

    .line 14835
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14725
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    .line 14726
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14727
    check-cast v1, Ljava/lang/String;

    .line 14735
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14731
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14732
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14733
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14735
    goto :goto_8
.end method

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 14767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 14757
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    return v0
.end method

.method public hasFormatId()Z
    .registers 3

    .prologue
    .line 14774
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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

.method public hasStreamUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14722
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVideoHeight()Z
    .registers 3

    .prologue
    .line 14764
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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

.method public hasVideoWidth()Z
    .registers 3

    .prologue
    .line 14754
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 14788
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    .line 14789
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14792
    :goto_8
    return v1

    .line 14789
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14791
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 14842
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getSerializedSize()I

    .line 14798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 14799
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14801
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 14802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14804
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 14805
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14807
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 14808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14810
    :cond_37
    return-void
.end method