.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneVerificationValidationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private idvGaiaId_:Ljava/lang/Object;

.field private idvPin_:Ljava/lang/Object;

.field private idvRequestId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50703
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    .line 50704
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->initFields()V

    .line 50705
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 50222
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50337
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    .line 50360
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 50223
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50217
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 50224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50337
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    .line 50360
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 50224
    return-void
.end method

.method static synthetic access$71202(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$71302(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$71402(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$71502(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50217
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 1

    .prologue
    .line 50228
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    return-object v0
.end method

.method private getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 50321
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 50322
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 50323
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 50325
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 50328
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

.method private getIdvPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 50289
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 50290
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 50291
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 50293
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 50296
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

.method private getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 50257
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 50258
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 50259
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 50261
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 50264
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
    .line 50333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 50334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 50335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 50336
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 2

    .prologue
    .line 50232
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    return-object v0
.end method

.method public getIdvGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50307
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 50308
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 50309
    check-cast v1, Ljava/lang/String;

    .line 50317
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 50311
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 50313
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 50314
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 50315
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 50317
    goto :goto_8
.end method

.method public getIdvPin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50275
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 50276
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 50277
    check-cast v1, Ljava/lang/String;

    .line 50285
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 50279
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 50281
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 50282
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 50283
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 50285
    goto :goto_8
.end method

.method public getIdvRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50243
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 50244
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 50245
    check-cast v1, Ljava/lang/String;

    .line 50253
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 50247
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 50249
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 50250
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 50251
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 50253
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 50363
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 50379
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 50365
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 50366
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 50367
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50370
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 50371
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50374
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 50375
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50378
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 50379
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasIdvGaiaId()Z
    .registers 3

    .prologue
    .line 50304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

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

.method public hasIdvPin()Z
    .registers 3

    .prologue
    .line 50272
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

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

.method public hasIdvRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50240
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 50386
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

    .line 50348
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getSerializedSize()I

    .line 50349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 50350
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 50352
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 50353
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 50355
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 50356
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 50358
    :cond_2e
    return-void
.end method
