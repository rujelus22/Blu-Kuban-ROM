.class public final Lcom/google/wireless/tacotruck/proto/Data$Phone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Phone;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private needsVerification_:Z

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44380
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Phone;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 44381
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->initFields()V

    .line 44382
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43947
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44018
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedIsInitialized:B

    .line 44041
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedSerializedSize:I

    .line 43948
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43942
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43949
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44018
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedIsInitialized:B

    .line 44041
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedSerializedSize:I

    .line 43949
    return-void
.end method

.method static synthetic access$59602(Lcom/google/wireless/tacotruck/proto/Data$Phone;Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43942
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object p1
.end method

.method static synthetic access$59702(Lcom/google/wireless/tacotruck/proto/Data$Phone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43942
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59802(Lcom/google/wireless/tacotruck/proto/Data$Phone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43942
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z

    return p1
.end method

.method static synthetic access$59902(Lcom/google/wireless/tacotruck/proto/Data$Phone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43942
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 1

    .prologue
    .line 43953
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43992
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    .line 43993
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43994
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43996
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    .line 43999
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
    .line 44014
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    .line 44016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z

    .line 44017
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 1

    .prologue
    .line 44137
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->access$59400()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 44140
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 43968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43942
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 43957
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public getNeedsVerification()Z
    .registers 2

    .prologue
    .line 44010
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43978
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    .line 43979
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 43980
    check-cast v1, Ljava/lang/String;

    .line 43988
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 43982
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43984
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43985
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43986
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43988
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44043
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedSerializedSize:I

    .line 44044
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 44060
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 44046
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 44047
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 44048
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44051
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 44052
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44055
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 44056
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 44059
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedSerializedSize:I

    move v1, v0

    .line 44060
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCountry()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43965
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNeedsVerification()Z
    .registers 3

    .prologue
    .line 44007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 43975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

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

    .line 44020
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedIsInitialized:B

    .line 44021
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44024
    :goto_8
    return v1

    .line 44021
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44023
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43942
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44138
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43942
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44142
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

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
    .line 44067
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

    .line 44029
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getSerializedSize()I

    .line 44030
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 44031
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 44033
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 44034
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44036
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 44037
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 44039
    :cond_2a
    return-void
.end method
