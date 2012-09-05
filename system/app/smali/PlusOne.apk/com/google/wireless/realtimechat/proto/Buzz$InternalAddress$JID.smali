.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JIDOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private node_:Ljava/lang/Object;

.field private resource_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 553
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 554
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->initFields()V

    .line 555
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 179
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedIsInitialized:B

    .line 206
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedSerializedSize:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 179
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedIsInitialized:B

    .line 206
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedSerializedSize:I

    .line 66
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    return-object v0
.end method

.method private getDomainBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    .line 100
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 101
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 103
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    .line 106
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

.method private getNodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    .line 132
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 133
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    .line 138
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

.method private getResourceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    .line 164
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 165
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    .line 170
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
    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 1

    .prologue
    .line 302
    #calls: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->access$100()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 305
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 5

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    .line 86
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 87
    check-cast v1, Ljava/lang/String;

    .line 95
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 89
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 91
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 93
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->domain_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 95
    goto :goto_8
.end method

.method public getNode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    .line 118
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 127
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 123
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 125
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->node_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 127
    goto :goto_8
.end method

.method public getResource()Ljava/lang/String;
    .registers 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    .line 150
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 151
    check-cast v1, Ljava/lang/String;

    .line 159
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 155
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 157
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->resource_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 159
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 208
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedSerializedSize:I

    .line 209
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 225
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 211
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 212
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 213
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 216
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 217
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getNodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 220
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 221
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 224
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedSerializedSize:I

    move v1, v0

    .line 225
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 82
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNode()Z
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

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

.method public hasResource()Z
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedIsInitialized:B

    .line 182
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 189
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 182
    goto :goto_9

    .line 184
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->hasDomain()Z

    move-result v3

    if-nez v3, :cond_16

    .line 185
    iput-byte v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedIsInitialized:B

    move v1, v2

    .line 186
    goto :goto_9

    .line 188
    :cond_16
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 232
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

    .line 194
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getSerializedSize()I

    .line 195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 196
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 198
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 199
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getNodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 201
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 202
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 204
    :cond_2e
    return-void
.end method
