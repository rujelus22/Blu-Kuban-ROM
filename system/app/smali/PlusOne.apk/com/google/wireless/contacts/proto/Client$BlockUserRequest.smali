.class public final Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$BlockUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockUserRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private doBlock_:Z

.field private fullName_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13243
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    .line 13244
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->initFields()V

    .line 13245
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12810
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12881
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedIsInitialized:B

    .line 12904
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedSerializedSize:I

    .line 12811
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12805
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12812
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12881
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedIsInitialized:B

    .line 12904
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedSerializedSize:I

    .line 12812
    return-void
.end method

.method static synthetic access$17502(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12805
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12805
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12805
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z

    return p1
.end method

.method static synthetic access$17802(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12805
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 1

    .prologue
    .line 12816
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    return-object v0
.end method

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12855
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    .line 12856
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12857
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12859
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    .line 12862
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
    .line 12877
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    .line 12879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z

    .line 12880
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 1

    .prologue
    .line 13000
    #calls: Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->access$17300()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13003
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12805
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 2

    .prologue
    .line 12820
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    return-object v0
.end method

.method public getDoBlock()Z
    .registers 2

    .prologue
    .line 12873
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12841
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    .line 12842
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12843
    check-cast v1, Ljava/lang/String;

    .line 12851
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12845
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12847
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12848
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12849
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12851
    goto :goto_8
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 12831
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12906
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedSerializedSize:I

    .line 12907
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 12923
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 12909
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 12910
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 12911
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12914
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 12915
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12918
    :cond_26
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 12919
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12922
    :cond_35
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 12923
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasDoBlock()Z
    .registers 3

    .prologue
    .line 12870
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 12838
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12828
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

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

    .line 12883
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedIsInitialized:B

    .line 12884
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12887
    :goto_8
    return v1

    .line 12884
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12886
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->memoizedIsInitialized:B

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
    .line 12930
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

    .line 12892
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getSerializedSize()I

    .line 12893
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 12894
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12896
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 12897
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12899
    :cond_1d
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 12900
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12902
    :cond_2a
    return-void
.end method
