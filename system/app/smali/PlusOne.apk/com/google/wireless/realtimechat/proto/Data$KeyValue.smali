.class public final Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5213
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .line 5214
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->initFields()V

    .line 5215
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4822
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4904
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedIsInitialized:B

    .line 4924
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedSerializedSize:I

    .line 4823
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4817
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;-><init>(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4824
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4904
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedIsInitialized:B

    .line 4924
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedSerializedSize:I

    .line 4824
    return-void
.end method

.method static synthetic access$6902(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4817
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 1

    .prologue
    .line 4828
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4857
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    .line 4858
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4859
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4861
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    .line 4864
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4889
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    .line 4890
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4891
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4893
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    .line 4896
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
    .line 4901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    .line 4902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    .line 4903
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 1

    .prologue
    .line 5016
    #calls: Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->access$6700()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 2

    .prologue
    .line 4832
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4843
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    .line 4844
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4845
    check-cast v1, Ljava/lang/String;

    .line 4853
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4847
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4849
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4850
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4851
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4853
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4926
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedSerializedSize:I

    .line 4927
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4939
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4929
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4930
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4931
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4934
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4935
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4938
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedSerializedSize:I

    move v1, v0

    .line 4939
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4875
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    .line 4876
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4877
    check-cast v1, Ljava/lang/String;

    .line 4885
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4879
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4881
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4882
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4883
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4885
    goto :goto_8
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4840
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 4872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

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

    .line 4906
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedIsInitialized:B

    .line 4907
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4910
    :goto_8
    return v1

    .line 4907
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4909
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->memoizedIsInitialized:B

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
    .line 4946
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

    .line 4915
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getSerializedSize()I

    .line 4916
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4917
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4919
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 4920
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4922
    :cond_1f
    return-void
.end method
