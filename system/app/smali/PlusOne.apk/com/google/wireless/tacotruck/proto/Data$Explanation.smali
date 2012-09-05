.class public final Lcom/google/wireless/tacotruck/proto/Data$Explanation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Explanation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2400
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    .line 2401
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->initFields()V

    .line 2402
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1881
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2042
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2065
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 1882
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1876
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2042
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2065
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 1883
    return-void
.end method

.method static synthetic access$2502(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/tacotruck/proto/Data$Explanation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1876
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 1

    .prologue
    .line 1887
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2026
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2027
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2028
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2030
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2033
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 1995
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1996
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1998
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2001
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
    .line 2038
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2041
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2161
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->access$2300()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 2

    .prologue
    .line 1891
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2012
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2013
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2014
    check-cast v1, Ljava/lang/String;

    .line 2022
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2016
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2018
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2019
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2020
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2022
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 1981
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1982
    check-cast v1, Ljava/lang/String;

    .line 1990
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1984
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1986
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1987
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1988
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1990
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2067
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 2068
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2084
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2070
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2071
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 2072
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2075
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 2076
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2079
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 2080
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2083
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    move v1, v0

    .line 2084
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 2009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 1977
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1967
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

    .line 2044
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2045
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2048
    :goto_8
    return v1

    .line 2045
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2047
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

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
    .line 2091
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

    .line 2053
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getSerializedSize()I

    .line 2054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 2055
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2057
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 2058
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2060
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 2061
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2063
    :cond_30
    return-void
.end method
