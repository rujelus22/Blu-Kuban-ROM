.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePlusOneRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24371
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    .line 24372
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->initFields()V

    .line 24373
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23920
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24013
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24036
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 23921
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23915
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24013
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24036
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 23922
    return-void
.end method

.method static synthetic access$33202(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23915
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33302(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23915
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33402(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23915
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object p1
.end method

.method static synthetic access$33502(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23915
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23987
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 23988
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23989
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23991
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 23994
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 1

    .prologue
    .line 23926
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    return-object v0
.end method

.method private getPlusoneIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23955
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 23956
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23957
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23959
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 23962
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
    .line 24009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 24010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 24011
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24012
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24132
    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->access$33000()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23973
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    .line 23974
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23975
    check-cast v1, Ljava/lang/String;

    .line 23983
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23977
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23979
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23980
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23981
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23983
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 2

    .prologue
    .line 23930
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23941
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    .line 23942
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 23943
    check-cast v1, Ljava/lang/String;

    .line 23951
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 23945
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23947
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23948
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23949
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 23951
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24038
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    .line 24039
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 24055
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 24041
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 24042
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 24043
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24046
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 24047
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24050
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 24051
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24054
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 24055
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 24005
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 23970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

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

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23938
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24002
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 24015
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

    .line 24016
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24019
    :goto_8
    return v1

    .line 24016
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24018
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->memoizedIsInitialized:B

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
    .line 24062
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

    .line 24024
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getSerializedSize()I

    .line 24025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 24026
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24028
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 24029
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24031
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 24032
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24034
    :cond_30
    return-void
.end method
