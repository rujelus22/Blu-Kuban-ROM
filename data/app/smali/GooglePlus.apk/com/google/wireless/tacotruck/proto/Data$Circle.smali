.class public final Lcom/google/wireless/tacotruck/proto/Data$Circle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Circle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private size_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12528
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 12529
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->initFields()V

    .line 12530
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11923
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12079
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 12108
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 11924
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12079
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 12108
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 11925
    return-void
.end method

.method static synthetic access$15802(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    return p1
.end method

.method static synthetic access$16202(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object p1
.end method

.method static synthetic access$16302(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11918
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 1

    .prologue
    .line 11929
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12009
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 12010
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12011
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12013
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 12016
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12041
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 12042
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12043
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12045
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 12048
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
    .line 12073
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 12074
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 12075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 12076
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    .line 12077
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 12078
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 12212
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->access$15600()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12215
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->access$15500(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 12069
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11918
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2

    .prologue
    .line 11933
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11995
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 11996
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11997
    check-cast v1, Ljava/lang/String;

    .line 12005
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11999
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12001
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12002
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12003
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12005
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12027
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 12028
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12029
    check-cast v1, Ljava/lang/String;

    .line 12037
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12031
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12033
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12034
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12035
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12037
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 12111
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 12135
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 12113
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 12114
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 12115
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12118
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 12119
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12122
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 12123
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12126
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 12127
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12130
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 12131
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12134
    :cond_5e
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    move v1, v0

    .line 12135
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 12059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11985
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    .line 12066
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 11992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 12024
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 12056
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 11982
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

    .line 12081
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 12082
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12085
    :goto_8
    return v1

    .line 12082
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12084
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11918
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12213
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11918
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 12217
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 12142
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

    .line 12090
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSerializedSize()I

    .line 12091
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 12092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12094
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 12095
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12097
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 12098
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12100
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 12101
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12103
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 12104
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12106
    :cond_4f
    return-void
.end method
