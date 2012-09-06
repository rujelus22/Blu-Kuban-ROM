.class public final Lcom/google/wireless/tacotruck/proto/Data$Country;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43332
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Country;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 43333
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->initFields()V

    .line 43334
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42941
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43023
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 43043
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 42942
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42936
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42943
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43023
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 43043
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 42943
    return-void
.end method

.method static synthetic access$58202(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42936
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$58302(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42936
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$58402(Lcom/google/wireless/tacotruck/proto/Data$Country;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42936
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    return p1
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42976
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 42977
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42978
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42980
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 42983
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 1

    .prologue
    .line 42947
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43008
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 43009
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43010
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43012
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 43015
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
    .line 43020
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 43021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 43022
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 43135
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->access$58000()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 43138
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42962
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 42963
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42964
    check-cast v1, Ljava/lang/String;

    .line 42972
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42966
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42968
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42969
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42970
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42972
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 42951
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42994
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 42995
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42996
    check-cast v1, Ljava/lang/String;

    .line 43004
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42998
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43000
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43001
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43002
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43004
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 43045
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 43046
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 43058
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 43048
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 43049
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 43050
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43053
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 43054
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43057
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    move v1, v0

    .line 43058
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42959
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 42991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

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

    .line 43025
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 43026
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43029
    :goto_8
    return v1

    .line 43026
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43028
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 43136
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 43140
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

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
    .line 43065
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

    .line 43034
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getSerializedSize()I

    .line 43035
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 43036
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43038
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 43039
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43041
    :cond_1f
    return-void
.end method
