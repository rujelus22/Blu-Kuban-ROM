.class public final Lcom/google/wireless/tacotruck/proto/Data$Interaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Interaction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private date_:J

.field private duration_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Lcom/google/protobuf/LazyStringList;

.field private number_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23425
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    .line 23426
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->initFields()V

    .line 23427
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22805
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22949
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedIsInitialized:B

    .line 22978
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedSerializedSize:I

    .line 22806
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22949
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedIsInitialized:B

    .line 22978
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedSerializedSize:I

    .line 22807
    return-void
.end method

.method static synthetic access$31302(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object p1
.end method

.method static synthetic access$31402(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31502(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J

    return-wide p1
.end method

.method static synthetic access$31602(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J

    return-wide p1
.end method

.method static synthetic access$31700(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22800
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$31702(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$31802(Lcom/google/wireless/tacotruck/proto/Data$Interaction;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 1

    .prologue
    .line 22811
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    return-object v0
.end method

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22897
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    .line 22898
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22899
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22901
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    .line 22904
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 22943
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 22944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    .line 22945
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J

    .line 22946
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J

    .line 22947
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    .line 22948
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 1

    .prologue
    .line 23087
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->access$31100()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 22915
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 2

    .prologue
    .line 22815
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 22925
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 22939
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 22936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22933
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22883
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    .line 22884
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22885
    check-cast v1, Ljava/lang/String;

    .line 22893
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22889
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22890
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22891
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22893
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 22980
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedSerializedSize:I

    .line 22981
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 23010
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 22983
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 22984
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 22985
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 22988
    :cond_1c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 22989
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 22992
    :cond_2b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_39

    .line 22993
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 22996
    :cond_39
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_48

    .line 22997
    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J

    invoke-static {v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 23001
    :cond_48
    const/4 v0, 0x0

    .line 23002
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_60

    .line 23003
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 23002
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 23006
    :cond_60
    add-int/2addr v2, v0

    .line 23007
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 23009
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedSerializedSize:I

    move v3, v2

    .line 23010
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 2

    .prologue
    .line 22873
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object v0
.end method

.method public hasDate()Z
    .registers 3

    .prologue
    .line 22912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

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

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 22922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

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

.method public hasNumber()Z
    .registers 3

    .prologue
    .line 22880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

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

    .line 22870
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

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

    .line 22951
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedIsInitialized:B

    .line 22952
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22955
    :goto_8
    return v1

    .line 22952
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22954
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->memoizedIsInitialized:B

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
    .line 23017
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

    .line 22960
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getSerializedSize()I

    .line 22961
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 22962
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22964
    :cond_15
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 22965
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22967
    :cond_22
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 22968
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22970
    :cond_2e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3b

    .line 22971
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22973
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 22974
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22973
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 22976
    :cond_51
    return-void
.end method
