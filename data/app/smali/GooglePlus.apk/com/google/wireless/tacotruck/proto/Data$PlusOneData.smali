.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;,
        Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private countData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneId_:Ljava/lang/Object;

.field private plusonedByViewer_:Z

.field private totalPlusoneCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10652
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 10653
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->initFields()V

    .line 10654
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9397
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10197
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedIsInitialized:B

    .line 10223
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedSerializedSize:I

    .line 9398
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9399
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10197
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedIsInitialized:B

    .line 10223
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedSerializedSize:I

    .line 9399
    return-void
.end method

.method static synthetic access$13402(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z

    return p1
.end method

.method static synthetic access$13502(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I

    return p1
.end method

.method static synthetic access$13600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9392
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9392
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 1

    .prologue
    .line 9403
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method private getPlusoneIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10180
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    .line 10181
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10182
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10184
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    .line 10187
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
    const/4 v0, 0x0

    .line 10192
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z

    .line 10193
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I

    .line 10194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    .line 10195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    .line 10196
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 1

    .prologue
    .line 10323
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->access$13200()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10326
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10270
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->access$13100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 3
    .parameter "index"

    .prologue
    .line 10152
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method public getCountDataCount()I
    .registers 2

    .prologue
    .line 10149
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    return-object v0
.end method

.method public getCountDataOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 10156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;

    return-object v0
.end method

.method public getCountDataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9392
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 9407
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10166
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    .line 10167
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10168
    check-cast v1, Ljava/lang/String;

    .line 10176
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10170
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10172
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10173
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10174
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10176
    goto :goto_8
.end method

.method public getPlusonedByViewer()Z
    .registers 2

    .prologue
    .line 10125
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10225
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedSerializedSize:I

    .line 10226
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 10246
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 10228
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 10229
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 10230
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 10233
    :cond_18
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_25

    .line 10234
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 10237
    :cond_25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 10238
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10237
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 10241
    :cond_3f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4e

    .line 10242
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10245
    :cond_4e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedSerializedSize:I

    move v2, v1

    .line 10246
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTotalPlusoneCount()I
    .registers 2

    .prologue
    .line 10135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I

    return v0
.end method

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    .line 10163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

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

.method public hasPlusonedByViewer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10122
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTotalPlusoneCount()Z
    .registers 3

    .prologue
    .line 10132
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

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

    .line 10199
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedIsInitialized:B

    .line 10200
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10203
    :goto_8
    return v1

    .line 10200
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10202
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9392
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10324
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9392
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 10328
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

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
    .line 10253
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getSerializedSize()I

    .line 10209
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 10210
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10212
    :cond_11
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1c

    .line 10213
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10215
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 10216
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 10218
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 10219
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10221
    :cond_41
    return-void
.end method
