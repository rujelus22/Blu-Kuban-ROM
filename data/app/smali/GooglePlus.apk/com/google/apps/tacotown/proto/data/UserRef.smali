.class public final Lcom/google/apps/tacotown/proto/data/UserRef;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserRef.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/UserRefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/UserRef$1;,
        Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/UserRef;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 491
    new-instance v0, Lcom/google/apps/tacotown/proto/data/UserRef;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/UserRef;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/UserRef;->defaultInstance:Lcom/google/apps/tacotown/proto/data/UserRef;

    .line 492
    sget-object v0, Lcom/google/apps/tacotown/proto/data/UserRef;->defaultInstance:Lcom/google/apps/tacotown/proto/data/UserRef;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/UserRef;->initFields()V

    .line 493
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/UserRef$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 125
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedIsInitialized:B

    .line 148
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/UserRef$Builder;Lcom/google/apps/tacotown/proto/data/UserRef$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/UserRef;-><init>(Lcom/google/apps/tacotown/proto/data/UserRef$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 125
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedIsInitialized:B

    .line 148
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/apps/tacotown/proto/data/UserRef;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/UserRef;->defaultInstance:Lcom/google/apps/tacotown/proto/data/UserRef;

    return-object v0
.end method

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    .line 110
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 111
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 113
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    .line 116
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

.method private getUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

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

.method private initFields()V
    .registers 2

    .prologue
    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 1

    .prologue
    .line 244
    #calls: Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->create()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 247
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/UserRef;->defaultInstance:Lcom/google/apps/tacotown/proto/data/UserRef;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 73
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    .line 96
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 97
    check-cast v1, Ljava/lang/String;

    .line 105
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 99
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 101
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 103
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 105
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 150
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedSerializedSize:I

    .line 151
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 167
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 153
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 154
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 155
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    :cond_19
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 159
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    :cond_28
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 163
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    :cond_39
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedSerializedSize:I

    move v1, v0

    .line 167
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUserId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41
    goto :goto_8
.end method

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

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
    .line 92
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

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

    .line 127
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedIsInitialized:B

    .line 128
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 131
    :goto_8
    return v1

    .line 128
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 130
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 2

    .prologue
    .line 245
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 2

    .prologue
    .line 249
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->newBuilder(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->toBuilder()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

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
    .line 174
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

    .line 136
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getSerializedSize()I

    .line 137
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 138
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 140
    :cond_12
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 141
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 143
    :cond_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 144
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 146
    :cond_2e
    return-void
.end method
