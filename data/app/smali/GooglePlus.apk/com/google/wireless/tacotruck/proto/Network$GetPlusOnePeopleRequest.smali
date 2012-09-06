.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPlusOnePeopleRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26415
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    .line 26416
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->initFields()V

    .line 26417
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26114
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26163
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedIsInitialized:B

    .line 26180
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedSerializedSize:I

    .line 26115
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26109
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26163
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedIsInitialized:B

    .line 26180
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedSerializedSize:I

    .line 26116
    return-void
.end method

.method static synthetic access$36402(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36502(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26109
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    .registers 1

    .prologue
    .line 26120
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    return-object v0
.end method

.method private getPlusoneIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26149
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    .line 26150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    .line 26156
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
    .line 26161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    .line 26162
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 1

    .prologue
    .line 26268
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->access$36200()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26271
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    .registers 2

    .prologue
    .line 26124
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26135
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    .line 26136
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26137
    check-cast v1, Ljava/lang/String;

    .line 26145
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26141
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26142
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26143
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26145
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 26182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedSerializedSize:I

    .line 26183
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 26191
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 26185
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 26186
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 26187
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26190
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 26191
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26132
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->bitField0_:I

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

    .line 26165
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedIsInitialized:B

    .line 26166
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26169
    :goto_8
    return v1

    .line 26166
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26168
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 2

    .prologue
    .line 26269
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 2

    .prologue
    .line 26273
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

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
    .line 26198
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 26174
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getSerializedSize()I

    .line 26175
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 26176
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getPlusoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26178
    :cond_11
    return-void
.end method
