.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatePlusOneRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

.field private static final serialVersionUID:J


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private returnFirstName_:Z

.field private returnGaiaId_:Z

.field private title_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23584
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    .line 23585
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->initFields()V

    .line 23586
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22805
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23017
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23052
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 22806
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23017
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23052
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 22807
    return-void
.end method

.method static synthetic access$31602(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object p1
.end method

.method static synthetic access$31702(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31802(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$31902(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32002(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    return p1
.end method

.method static synthetic access$32102(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    return p1
.end method

.method static synthetic access$32202(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32302(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22800
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    return p1
.end method

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22997
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 22998
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22999
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23001
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23004
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 1

    .prologue
    .line 22811
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22903
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 22904
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22905
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22907
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 22910
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22945
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 22946
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22947
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22949
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 22952
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23009
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 23011
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 23013
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    .line 23014
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    .line 23015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23016
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23164
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->access$31400()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 22921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22983
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 22984
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22985
    check-cast v1, Ljava/lang/String;

    .line 22993
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22987
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22989
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22990
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22991
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22993
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22800
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 2

    .prologue
    .line 22815
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22889
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 22890
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22891
    check-cast v1, Ljava/lang/String;

    .line 22899
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22893
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22895
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22896
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22897
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22899
    goto :goto_8
.end method

.method public getReturnFirstName()Z
    .registers 2

    .prologue
    .line 22963
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 22973
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 23055
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 23087
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 23057
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 23058
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 23059
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23062
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 23063
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23066
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 23067
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23070
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 23071
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23074
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 23075
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23078
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 23079
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23082
    :cond_6a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 23083
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23086
    :cond_7c
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 23087
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22931
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 22932
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22933
    check-cast v1, Ljava/lang/String;

    .line 22941
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22935
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22937
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22938
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22939
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22941
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 22879
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 22918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22980
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 22886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

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

.method public hasReturnFirstName()Z
    .registers 3

    .prologue
    .line 22960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

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

.method public hasReturnGaiaId()Z
    .registers 3

    .prologue
    .line 22970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 22928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

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

    .prologue
    const/4 v0, 0x1

    .line 22876
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

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

    .line 23019
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23020
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23023
    :goto_8
    return v1

    .line 23020
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23022
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

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
    .line 23094
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

    .line 23028
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getSerializedSize()I

    .line 23029
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 23030
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23032
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 23033
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23035
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 23036
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23038
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 23039
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23041
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 23042
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23044
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 23045
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23047
    :cond_59
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 23048
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23050
    :cond_69
    return-void
.end method
