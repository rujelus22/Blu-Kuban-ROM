.class public final Lcom/google/wireless/tacotruck/proto/Data$Point;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24081
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Point;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 24082
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->initFields()V

    .line 24083
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23748
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 23814
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 23749
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23743
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 23814
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 23750
    return-void
.end method

.method static synthetic access$32202(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23743
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    return p1
.end method

.method static synthetic access$32302(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23743
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    return p1
.end method

.method static synthetic access$32402(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23743
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 1

    .prologue
    .line 23754
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23783
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    .line 23784
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    .line 23785
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 23906
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->access$32000()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23909
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 23758
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 23769
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 23779
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23816
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 23817
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 23829
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 23819
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 23820
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 23821
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23824
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 23825
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23828
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    move v1, v0

    .line 23829
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23766
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitudeE7()Z
    .registers 3

    .prologue
    .line 23776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23788
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 23789
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 23800
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 23789
    goto :goto_9

    .line 23791
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v3

    if-nez v3, :cond_16

    .line 23792
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    move v1, v2

    .line 23793
    goto :goto_9

    .line 23795
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v3

    if-nez v3, :cond_20

    .line 23796
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    move v1, v2

    .line 23797
    goto :goto_9

    .line 23799
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 23907
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 23911
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

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
    .line 23836
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 23805
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getSerializedSize()I

    .line 23806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 23807
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23809
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 23810
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23812
    :cond_1b
    return-void
.end method
