.class public final Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamViewType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleId_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field private userGaiaId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41139
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 41140
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->initFields()V

    .line 41141
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40582
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40739
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 40765
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 40583
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40584
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40739
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 40765
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 40584
    return-void
.end method

.method static synthetic access$55302(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object p1
.end method

.method static synthetic access$55402(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$55502(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$55602(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$55702(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40577
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    return p1
.end method

.method private getCircleIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40722
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 40723
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40724
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40726
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 40729
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 1

    .prologue
    .line 40588
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40690
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 40691
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40692
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40694
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 40697
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
    .line 40734
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 40735
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    .line 40736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 40737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 40738
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 1

    .prologue
    .line 40865
    #calls: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->access$55100()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40708
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 40709
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40710
    check-cast v1, Ljava/lang/String;

    .line 40718
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40712
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40714
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40715
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40716
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40718
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40577
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2

    .prologue
    .line 40592
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40676
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 40677
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40678
    check-cast v1, Ljava/lang/String;

    .line 40686
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40680
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40682
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40683
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40684
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40686
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 40767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 40768
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 40788
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 40770
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 40771
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 40772
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 40775
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 40776
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 40779
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 40780
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40783
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_4a

    .line 40784
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40787
    :cond_4a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    move v1, v0

    .line 40788
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2

    .prologue
    .line 40656
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 40666
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    return-wide v0
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 40705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 40673
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40653
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    .line 40663
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

    .line 40741
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 40742
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 40745
    :goto_8
    return v1

    .line 40742
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 40744
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

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
    .line 40795
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

    .line 40750
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getSerializedSize()I

    .line 40751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 40752
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 40754
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 40755
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 40757
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 40758
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40760
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3d

    .line 40761
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40763
    :cond_3d
    return-void
.end method
