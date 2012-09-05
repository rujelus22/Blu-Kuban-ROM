.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxFieldValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boolValue_:Z

.field private dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

.field private gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31776
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31777
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->initFields()V

    .line 31778
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31264
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31346
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 31372
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 31265
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31266
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31346
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 31372
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 31266
    return-void
.end method

.method static synthetic access$42802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    return p1
.end method

.method static synthetic access$43002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;)Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object p1
.end method

.method static synthetic access$43102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object p1
.end method

.method static synthetic access$43202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31259
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 1

    .prologue
    .line 31270
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method private getStringValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31299
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 31300
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31301
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31303
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 31306
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
    .line 31341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 31342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    .line 31343
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    .line 31344
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 31345
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 1

    .prologue
    .line 31472
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->access$42600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31475
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolValue()Z
    .registers 2

    .prologue
    .line 31317
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    return v0
.end method

.method public getDateValue()Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;
    .registers 2

    .prologue
    .line 31327
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31259
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 31274
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public getGender()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 31337
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    .line 31375
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 31395
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 31377
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 31378
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 31379
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31382
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 31383
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31386
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 31387
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31390
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 31391
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31394
    :cond_44
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedSerializedSize:I

    move v1, v0

    .line 31395
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31285
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    .line 31286
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31287
    check-cast v1, Ljava/lang/String;

    .line 31295
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31289
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31291
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31292
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31293
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->stringValue_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31295
    goto :goto_8
.end method

.method public hasBoolValue()Z
    .registers 3

    .prologue
    .line 31314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasDateValue()Z
    .registers 3

    .prologue
    .line 31324
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasGender()Z
    .registers 3

    .prologue
    .line 31334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

.method public hasStringValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31282
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

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

    .line 31348
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

    .line 31349
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31352
    :goto_8
    return v1

    .line 31349
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31351
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->memoizedIsInitialized:B

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
    .line 31402
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

    .line 31357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getSerializedSize()I

    .line 31358
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 31359
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31361
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 31362
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->boolValue_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31364
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 31365
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->dateValue_:Lcom/google/wireless/tacotruck/proto/Data$CoarseDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31367
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 31368
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->gender_:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31370
    :cond_37
    return-void
.end method
