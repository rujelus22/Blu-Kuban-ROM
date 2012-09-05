.class public final Lcom/google/wireless/webapps/Analytics$CustomValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$CustomValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timestamp_:J

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4437
    new-instance v0, Lcom/google/wireless/webapps/Analytics$CustomValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$CustomValue;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$CustomValue;->defaultInstance:Lcom/google/wireless/webapps/Analytics$CustomValue;

    .line 4438
    sget-object v0, Lcom/google/wireless/webapps/Analytics$CustomValue;->defaultInstance:Lcom/google/wireless/webapps/Analytics$CustomValue;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->initFields()V

    .line 4439
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3903
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4029
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedIsInitialized:B

    .line 4055
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedSerializedSize:I

    .line 3904
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;-><init>(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3905
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4029
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedIsInitialized:B

    .line 4055
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedSerializedSize:I

    .line 3905
    return-void
.end method

.method static synthetic access$5302(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/wireless/webapps/Analytics$CustomValue;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/webapps/Analytics$CustomValue;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3898
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    return p1
.end method

.method private getContextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4002
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    .line 4003
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4004
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4006
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    .line 4009
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

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 1

    .prologue
    .line 3909
    sget-object v0, Lcom/google/wireless/webapps/Analytics$CustomValue;->defaultInstance:Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3938
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    .line 3939
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3940
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3942
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    .line 3945
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
    .line 3970
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    .line 3971
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3972
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3974
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    .line 3977
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
    .line 4024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    .line 4025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    .line 4026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    .line 4027
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J

    .line 4028
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 1

    .prologue
    .line 4155
    #calls: Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->create()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->access$5100()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3988
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    .line 3989
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3990
    check-cast v1, Ljava/lang/String;

    .line 3998
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3992
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3994
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3995
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3996
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3998
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3898
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 2

    .prologue
    .line 3913
    sget-object v0, Lcom/google/wireless/webapps/Analytics$CustomValue;->defaultInstance:Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3924
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    .line 3925
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3926
    check-cast v1, Ljava/lang/String;

    .line 3934
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3928
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3930
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3931
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3932
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3934
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4057
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedSerializedSize:I

    .line 4058
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 4078
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 4060
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 4061
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 4062
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4065
    :cond_1a
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4066
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4069
    :cond_29
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 4070
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4073
    :cond_39
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 4074
    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4077
    :cond_48
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedSerializedSize:I

    move v1, v0

    .line 4078
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 4020
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3956
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    .line 3957
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3958
    check-cast v1, Ljava/lang/String;

    .line 3966
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3960
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3962
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3963
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3964
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3966
    goto :goto_8
.end method

.method public hasContext()Z
    .registers 3

    .prologue
    .line 3985
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3921
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 4017
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 3953
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

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

    .line 4031
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedIsInitialized:B

    .line 4032
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4035
    :goto_8
    return v1

    .line 4032
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4034
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->memoizedIsInitialized:B

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
    .line 4085
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

    .line 4040
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getSerializedSize()I

    .line 4041
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 4042
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4044
    :cond_13
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4045
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4047
    :cond_20
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 4048
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4050
    :cond_2e
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 4051
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4053
    :cond_3b
    return-void
.end method
