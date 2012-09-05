.class public final Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameTagApprovalRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

.field private static final serialVersionUID:J


# instance fields
.field private approve_:Z

.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J

.field private shapeId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36562
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    .line 36563
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->initFields()V

    .line 36564
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36049
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36142
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedIsInitialized:B

    .line 36171
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedSerializedSize:I

    .line 36050
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36051
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36142
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedIsInitialized:B

    .line 36171
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedSerializedSize:I

    .line 36051
    return-void
.end method

.method static synthetic access$50302(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$50402(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50502(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$50602(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z

    return p1
.end method

.method static synthetic access$50702(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J

    return-wide p1
.end method

.method static synthetic access$50802(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36044
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 1

    .prologue
    .line 36055
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36094
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36095
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36096
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36098
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36101
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 36136
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J

    .line 36137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36138
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J

    .line 36139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z

    .line 36140
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J

    .line 36141
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    .registers 1

    .prologue
    .line 36275
    #calls: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;->access$50100()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApprove()Z
    .registers 2

    .prologue
    .line 36122
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36044
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;
    .registers 2

    .prologue
    .line 36059
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36080
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 36081
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36082
    check-cast v1, Ljava/lang/String;

    .line 36090
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36084
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36086
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36087
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36088
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36090
    goto :goto_8
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 36070
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 36112
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedSerializedSize:I

    .line 36174
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 36198
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 36176
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 36177
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 36178
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36181
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_25

    .line 36182
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36185
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    .line 36186
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36189
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 36190
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36193
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_54

    .line 36194
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36197
    :cond_54
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 36198
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 36132
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J

    return-wide v0
.end method

.method public hasApprove()Z
    .registers 3

    .prologue
    .line 36119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 36077
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36067
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 36109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

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

.method public hasShapeId()Z
    .registers 3

    .prologue
    .line 36129
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 36144
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedIsInitialized:B

    .line 36145
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36148
    :goto_8
    return v1

    .line 36145
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36147
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->memoizedIsInitialized:B

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
    .line 36205
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 36153
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getSerializedSize()I

    .line 36154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 36155
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36157
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1c

    .line 36158
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->photoId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36160
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    .line 36161
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->approve_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 36163
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 36164
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->shapeId_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36166
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_45

    .line 36167
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36169
    :cond_45
    return-void
.end method
