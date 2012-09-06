.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxFieldValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boolValue_:Z

.field private dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

.field private gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34557
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34558
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->initFields()V

    .line 34559
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34045
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34127
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 34153
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 34046
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34047
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34127
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 34153
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 34047
    return-void
.end method

.method static synthetic access$46302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$46402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    return p1
.end method

.method static synthetic access$46502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object p1
.end method

.method static synthetic access$46602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object p1
.end method

.method static synthetic access$46702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34040
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 1

    .prologue
    .line 34051
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method private getStringValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34080
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 34081
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34082
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34084
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 34087
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
    .line 34122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 34123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    .line 34124
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 34125
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 34126
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 34253
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->access$46100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34256
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolValue()Z
    .registers 2

    .prologue
    .line 34098
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    return v0
.end method

.method public getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 34108
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34040
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 34055
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 34118
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 34155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 34156
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 34176
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 34158
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 34159
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 34160
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34163
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 34164
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34167
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 34168
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34171
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 34172
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34175
    :cond_44
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    move v1, v0

    .line 34176
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34066
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 34067
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34068
    check-cast v1, Ljava/lang/String;

    .line 34076
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34070
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34072
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34073
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34074
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34076
    goto :goto_8
.end method

.method public hasBoolValue()Z
    .registers 3

    .prologue
    .line 34095
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasDateValue()Z
    .registers 3

    .prologue
    .line 34105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 34115
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasStringValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34063
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 34129
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 34130
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34133
    :goto_8
    return v1

    .line 34130
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34132
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34040
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34254
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34040
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2

    .prologue
    .line 34258
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

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
    .line 34183
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

    .line 34138
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getSerializedSize()I

    .line 34139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 34140
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34142
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 34143
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34145
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 34146
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34148
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 34149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34151
    :cond_37
    return-void
.end method
