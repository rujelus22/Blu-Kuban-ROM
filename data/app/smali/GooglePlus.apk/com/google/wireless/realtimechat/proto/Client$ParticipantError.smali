.class public final Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticipantError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34746
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 34747
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->initFields()V

    .line 34748
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34205
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34331
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedIsInitialized:B

    .line 34357
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedSerializedSize:I

    .line 34206
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34331
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedIsInitialized:B

    .line 34357
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedSerializedSize:I

    .line 34207
    return-void
.end method

.method static synthetic access$48002(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48102(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$48202(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48302(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48402(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34200
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 1

    .prologue
    .line 34211
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method private getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34282
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    .line 34283
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34284
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34286
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    .line 34289
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

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34314
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    .line 34315
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34316
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34318
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    .line 34321
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

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34240
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    .line 34241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    .line 34247
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
    .line 34326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    .line 34327
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    .line 34329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    .line 34330
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 1

    .prologue
    .line 34457
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->access$47800()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34460
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34200
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 2

    .prologue
    .line 34215
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34268
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    .line 34269
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34270
    check-cast v1, Ljava/lang/String;

    .line 34278
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34272
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34274
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34275
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34276
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34278
    goto :goto_8
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34300
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    .line 34301
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34302
    check-cast v1, Ljava/lang/String;

    .line 34310
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34304
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34306
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34307
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34308
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34310
    goto :goto_8
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34226
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    .line 34227
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34228
    check-cast v1, Ljava/lang/String;

    .line 34236
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34230
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34232
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34233
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34234
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34236
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 34359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedSerializedSize:I

    .line 34360
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 34380
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 34362
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 34363
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 34364
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34367
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 34368
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34371
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 34372
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34375
    :cond_3b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4c

    .line 34376
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34379
    :cond_4c
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedSerializedSize:I

    move v1, v0

    .line 34380
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 34258
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 34265
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

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
    .line 34297
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34223
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 34255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 34333
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedIsInitialized:B

    .line 34334
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34337
    :goto_8
    return v1

    .line 34334
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34336
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34200
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34458
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34200
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34462
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

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
    .line 34387
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

    .line 34342
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getSerializedSize()I

    .line 34343
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 34344
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34346
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 34347
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 34349
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 34350
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34352
    :cond_30
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3f

    .line 34353
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34355
    :cond_3f
    return-void
.end method
