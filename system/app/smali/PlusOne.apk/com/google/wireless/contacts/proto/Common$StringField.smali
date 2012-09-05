.class public final Lcom/google/wireless/contacts/proto/Common$StringField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Common.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 741
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Common$StringField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$StringField;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 742
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$StringField;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->initFields()V

    .line 743
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 361
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 421
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedIsInitialized:B

    .line 441
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedSerializedSize:I

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;Lcom/google/wireless/contacts/proto/Common$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField;-><init>(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 363
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 421
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedIsInitialized:B

    .line 441
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedSerializedSize:I

    .line 363
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/contacts/proto/Common$StringField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/wireless/contacts/proto/Common$StringField;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/wireless/contacts/proto/Common$StringField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 1

    .prologue
    .line 367
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$StringField;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    .line 407
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 408
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 410
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    .line 413
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
    .line 418
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 1

    .prologue
    .line 533
    #calls: Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->create()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->access$600()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 536
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 371
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$StringField;->defaultInstance:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 443
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedSerializedSize:I

    .line 444
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 456
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 446
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 447
    iget v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 448
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 451
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 452
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 455
    :cond_26
    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedSerializedSize:I

    move v1, v0

    .line 456
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 392
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    .line 393
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 394
    check-cast v1, Ljava/lang/String;

    .line 402
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 396
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 398
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 400
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 402
    goto :goto_8
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 379
    iget v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 389
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

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

    .line 423
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedIsInitialized:B

    .line 424
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 427
    :goto_8
    return v1

    .line 424
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 426
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->memoizedIsInitialized:B

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
    .line 463
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

    .line 432
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField;->getSerializedSize()I

    .line 433
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 434
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 436
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 437
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 439
    :cond_1d
    return-void
.end method
