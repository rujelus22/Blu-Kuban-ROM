.class public final Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CoarseDateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoarseDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private day_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27439
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 27440
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->initFields()V

    .line 27441
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27069
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27118
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedIsInitialized:B

    .line 27141
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedSerializedSize:I

    .line 27070
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27064
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27071
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27118
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedIsInitialized:B

    .line 27141
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedSerializedSize:I

    .line 27071
    return-void
.end method

.method static synthetic access$37202(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27064
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I

    return p1
.end method

.method static synthetic access$37302(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27064
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I

    return p1
.end method

.method static synthetic access$37402(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27064
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I

    return p1
.end method

.method static synthetic access$37502(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27064
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 1

    .prologue
    .line 27075
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27114
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I

    .line 27115
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I

    .line 27116
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I

    .line 27117
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 1

    .prologue
    .line 27237
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->access$37000()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27240
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDay()I
    .registers 2

    .prologue
    .line 27090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27064
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 27079
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 27100
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27143
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedSerializedSize:I

    .line 27144
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27160
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27146
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27147
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 27148
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27151
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 27152
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27155
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 27156
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27159
    :cond_33
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedSerializedSize:I

    move v1, v0

    .line 27160
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 27110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I

    return v0
.end method

.method public hasDay()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27087
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMonth()Z
    .registers 3

    .prologue
    .line 27097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

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

.method public hasYear()Z
    .registers 3

    .prologue
    .line 27107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 27120
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedIsInitialized:B

    .line 27121
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 27124
    :goto_8
    return v1

    .line 27121
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 27123
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->memoizedIsInitialized:B

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
    .line 27167
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

    .line 27129
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getSerializedSize()I

    .line 27130
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 27131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->day_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27133
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 27134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->month_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27136
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 27137
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->year_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27139
    :cond_28
    return-void
.end method
