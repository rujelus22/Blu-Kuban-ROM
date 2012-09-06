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
    .line 24192
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    .line 24193
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->initFields()V

    .line 24194
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23413
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23625
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23660
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 23414
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23625
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23660
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 23415
    return-void
.end method

.method static synthetic access$32302(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object p1
.end method

.method static synthetic access$32402(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32502(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$32602(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32702(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    return p1
.end method

.method static synthetic access$32802(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    return p1
.end method

.method static synthetic access$32902(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33002(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23408
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    return p1
.end method

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23605
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23606
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23607
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23609
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23612
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
    .line 23419
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23511
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 23512
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23513
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23515
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 23518
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
    .line 23553
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 23554
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23555
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23557
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 23560
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

    .line 23617
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23618
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 23619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 23621
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    .line 23622
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    .line 23623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23624
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23772
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->access$32100()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23775
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 23529
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23591
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    .line 23592
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23593
    check-cast v1, Ljava/lang/String;

    .line 23601
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23595
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23597
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23598
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23599
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23601
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23408
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 2

    .prologue
    .line 23423
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23497
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    .line 23498
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23499
    check-cast v1, Ljava/lang/String;

    .line 23507
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23501
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23503
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23504
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23505
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23507
    goto :goto_8
.end method

.method public getReturnFirstName()Z
    .registers 2

    .prologue
    .line 23571
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 23581
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23662
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    .line 23663
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 23695
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 23665
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 23666
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 23667
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23670
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 23671
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23674
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 23675
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23678
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 23679
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23682
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 23683
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23686
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 23687
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23690
    :cond_6a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 23691
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23694
    :cond_7c
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 23695
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23539
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    .line 23540
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23541
    check-cast v1, Ljava/lang/String;

    .line 23549
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23543
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23545
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23546
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23547
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23549
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 23487
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 23526
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
    .line 23588
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
    .line 23494
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
    .line 23568
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
    .line 23578
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
    .line 23536
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

    .line 23484
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

    .line 23627
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    .line 23628
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23631
    :goto_8
    return v1

    .line 23628
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23630
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23408
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23773
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23408
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23777
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

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
    .line 23702
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

    .line 23636
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getSerializedSize()I

    .line 23637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 23638
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 23640
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 23641
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23643
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 23644
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23646
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 23647
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23649
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 23650
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23652
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 23653
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 23655
    :cond_59
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 23656
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23658
    :cond_69
    return-void
.end method
