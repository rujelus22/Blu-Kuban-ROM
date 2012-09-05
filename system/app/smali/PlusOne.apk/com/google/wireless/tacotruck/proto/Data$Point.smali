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
    .line 22344
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Point;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 22345
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->initFields()V

    .line 22346
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22011
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22049
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 22077
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 22012
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22006
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22049
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 22077
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 22013
    return-void
.end method

.method static synthetic access$30102(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22006
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    return p1
.end method

.method static synthetic access$30202(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22006
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    return p1
.end method

.method static synthetic access$30302(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22006
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 1

    .prologue
    .line 22017
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22046
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    .line 22047
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    .line 22048
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 22169
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->access$29900()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22172
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
    .line 22006
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 22021
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Point;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 22032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 22042
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22079
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    .line 22080
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 22092
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 22082
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 22083
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 22084
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22087
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 22088
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22091
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedSerializedSize:I

    move v1, v0

    .line 22092
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22029
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
    .line 22039
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

    .line 22051
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    .line 22052
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 22063
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 22052
    goto :goto_9

    .line 22054
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v3

    if-nez v3, :cond_16

    .line 22055
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    move v1, v2

    .line 22056
    goto :goto_9

    .line 22058
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v3

    if-nez v3, :cond_20

    .line 22059
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

    move v1, v2

    .line 22060
    goto :goto_9

    .line 22062
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->memoizedIsInitialized:B

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
    .line 22099
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

    .line 22068
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getSerializedSize()I

    .line 22069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 22070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22072
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 22073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22075
    :cond_1b
    return-void
.end method
