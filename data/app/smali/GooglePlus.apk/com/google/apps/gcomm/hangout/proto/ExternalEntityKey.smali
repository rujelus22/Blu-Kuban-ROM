.class public final Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExternalEntityKey.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$1;,
        Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 417
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .line 418
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->initFields()V

    .line 419
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 92
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    .line 120
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;-><init>(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 92
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    .line 120
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    return-object v0
.end method

.method private getDomainBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    .line 46
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 47
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 49
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    .line 52
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
    .line 77
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    .line 78
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 79
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 81
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    .line 84
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
    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 1

    .prologue
    .line 212
    #calls: Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->access$100()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 215
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    .line 32
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 41
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    .line 64
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 73
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 67
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 69
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 71
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 73
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 122
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedSerializedSize:I

    .line 123
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 135
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 125
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 126
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 127
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    :cond_19
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 131
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    :cond_28
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedSerializedSize:I

    move v1, v0

    .line 135
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    .line 95
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 106
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 95
    goto :goto_9

    .line 97
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->hasDomain()Z

    move-result v3

    if-nez v3, :cond_16

    .line 98
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    move v1, v2

    .line 99
    goto :goto_9

    .line 101
    :cond_16
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->hasId()Z

    move-result v3

    if-nez v3, :cond_20

    .line 102
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    move v1, v2

    .line 103
    goto :goto_9

    .line 105
    :cond_20
    iput-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 2

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

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
    .line 142
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

    .line 111
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getSerializedSize()I

    .line 112
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 113
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 115
    :cond_12
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 116
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 118
    :cond_1f
    return-void
.end method
