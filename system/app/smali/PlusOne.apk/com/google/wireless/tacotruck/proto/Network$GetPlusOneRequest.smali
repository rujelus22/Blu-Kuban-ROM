.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPlusOneRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private returnFirstName_:Z

.field private returnGaiaId_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25178
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    .line 25179
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->initFields()V

    .line 25180
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24711
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedIsInitialized:B

    .line 24819
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedSerializedSize:I

    .line 24712
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24713
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedIsInitialized:B

    .line 24819
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedSerializedSize:I

    .line 24713
    return-void
.end method

.method static synthetic access$34402(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object p1
.end method

.method static synthetic access$34502(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34602(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z

    return p1
.end method

.method static synthetic access$34702(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z

    return p1
.end method

.method static synthetic access$34802(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24706
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    .registers 1

    .prologue
    .line 24717
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24756
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    .line 24757
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24758
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24760
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    .line 24763
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

    .line 24788
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    .line 24790
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z

    .line 24791
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z

    .line 24792
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24919
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->access$34200()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24706
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    .registers 2

    .prologue
    .line 24721
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24742
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    .line 24743
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24744
    check-cast v1, Ljava/lang/String;

    .line 24752
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24746
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24748
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24749
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24750
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24752
    goto :goto_8
.end method

.method public getReturnFirstName()Z
    .registers 2

    .prologue
    .line 24774
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 24784
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24821
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedSerializedSize:I

    .line 24822
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 24842
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 24824
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 24825
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 24826
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24829
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 24830
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24833
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 24834
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24837
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 24838
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24841
    :cond_48
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 24842
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 24732
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 24739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

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
    .line 24771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

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

.method public hasReturnGaiaId()Z
    .registers 3

    .prologue
    .line 24781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

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

    .line 24729
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

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

    .line 24795
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedIsInitialized:B

    .line 24796
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24799
    :goto_8
    return v1

    .line 24796
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24798
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->memoizedIsInitialized:B

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
    .line 24849
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

    .line 24804
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getSerializedSize()I

    .line 24805
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 24806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24808
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 24809
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24811
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 24812
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24814
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 24815
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24817
    :cond_3b
    return-void
.end method
