.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleName_:Ljava/lang/Object;

.field private count_:I

.field private focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private personFirstName_:Lcom/google/protobuf/LazyStringList;

.field private personId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9467
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    .line 9468
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->initFields()V

    .line 9469
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8798
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8903
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 8932
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 8799
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8903
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 8932
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 8800
    return-void
.end method

.method static synthetic access$11702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    return p1
.end method

.method static synthetic access$11800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8793
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    return p1
.end method

.method private getCircleNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8871
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 8872
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8873
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8875
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 8878
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 1

    .prologue
    .line 8804
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8897
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    .line 8898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    .line 8899
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 8900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 8901
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 8902
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9051
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->access$11500()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8857
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 8858
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8859
    check-cast v1, Ljava/lang/String;

    .line 8867
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8861
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8863
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8864
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8865
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8867
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 8819
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8793
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 2

    .prologue
    .line 8808
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method public getFocusObfuscatedPersonId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 8847
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedPersonIdCount()I
    .registers 2

    .prologue
    .line 8844
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedPersonIdList()Ljava/util/List;
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
    .line 8841
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPersonFirstName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 8893
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPersonFirstNameCount()I
    .registers 2

    .prologue
    .line 8890
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPersonFirstNameList()Ljava/util/List;
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
    .line 8887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPersonId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 8833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonIdCount()I
    .registers 2

    .prologue
    .line 8830
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8827
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 8934
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 8935
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 8974
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 8937
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 8938
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 8939
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 8943
    :cond_16
    const/4 v0, 0x0

    .line 8944
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 8945
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 8944
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 8948
    :cond_34
    add-int/2addr v2, v0

    .line 8949
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 8951
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_51

    .line 8952
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8956
    :cond_51
    const/4 v0, 0x0

    .line 8957
    const/4 v1, 0x0

    :goto_53
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_69

    .line 8958
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 8957
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 8961
    :cond_69
    add-int/2addr v2, v0

    .line 8962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 8965
    const/4 v0, 0x0

    .line 8966
    const/4 v1, 0x0

    :goto_77
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8d

    .line 8967
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 8966
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 8970
    :cond_8d
    add-int/2addr v2, v0

    .line 8971
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getFocusObfuscatedPersonIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 8973
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    move v3, v2

    .line 8974
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_7
.end method

.method public hasCircleName()Z
    .registers 3

    .prologue
    .line 8854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8816
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

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

    .line 8905
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 8906
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8909
    :goto_8
    return v1

    .line 8906
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8908
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

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
    .line 8981
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8914
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getSerializedSize()I

    .line 8915
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_10

    .line 8916
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8918
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 8919
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8918
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 8921
    :cond_2b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_39

    .line 8922
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8924
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 8925
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8924
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 8927
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 8928
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8927
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 8930
    :cond_65
    return-void
.end method
