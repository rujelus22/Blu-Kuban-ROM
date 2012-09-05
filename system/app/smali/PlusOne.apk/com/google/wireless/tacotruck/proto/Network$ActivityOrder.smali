.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

.field private bitField0_:I

.field private lastModifiedUsec_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7183
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    .line 7184
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->initFields()V

    .line 7185
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6738
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6809
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedIsInitialized:B

    .line 6838
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedSerializedSize:I

    .line 6739
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6733
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6740
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6809
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedIsInitialized:B

    .line 6838
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedSerializedSize:I

    .line 6740
    return-void
.end method

.method static synthetic access$8802(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6733
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6733
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J

    return-wide p1
.end method

.method static synthetic access$9002(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6733
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6733
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6773
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    .line 6774
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6775
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6777
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    .line 6780
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 1

    .prologue
    .line 6744
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 6805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    .line 6806
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J

    .line 6807
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 6808
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 1

    .prologue
    .line 6934
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->access$8600()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 6801
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6759
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    .line 6760
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6761
    check-cast v1, Ljava/lang/String;

    .line 6769
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6763
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6765
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6766
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6767
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6769
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6733
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 2

    .prologue
    .line 6748
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    return-object v0
.end method

.method public getLastModifiedUsec()J
    .registers 3

    .prologue
    .line 6791
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6840
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedSerializedSize:I

    .line 6841
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 6857
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 6843
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 6844
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 6845
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6848
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 6849
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6852
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 6853
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6856
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedSerializedSize:I

    move v1, v0

    .line 6857
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivity()Z
    .registers 3

    .prologue
    .line 6798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

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

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6756
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastModifiedUsec()Z
    .registers 3

    .prologue
    .line 6788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6811
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedIsInitialized:B

    .line 6812
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 6821
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 6812
    goto :goto_9

    .line 6814
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->hasActivity()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6815
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 6816
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedIsInitialized:B

    move v1, v2

    .line 6817
    goto :goto_9

    .line 6820
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->memoizedIsInitialized:B

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
    .line 6864
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

    .line 6826
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getSerializedSize()I

    .line 6827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 6828
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6830
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 6831
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6833
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 6834
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6836
    :cond_2a
    return-void
.end method
