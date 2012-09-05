.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32645
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 32646
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->initFields()V

    .line 32647
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32202
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32344
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 32364
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 32203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32197
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32344
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 32364
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 32204
    return-void
.end method

.method static synthetic access$44202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32197
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object p1
.end method

.method static synthetic access$44302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32197
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$44402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32197
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 1

    .prologue
    .line 32208
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32329
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 32330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 32336
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
    .line 32341
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 32343
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 32456
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->access$44000()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32459
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32197
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 32212
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32366
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 32367
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 32379
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 32369
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 32370
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 32371
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32374
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 32375
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32378
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    move v1, v0

    .line 32379
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32315
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 32316
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32317
    check-cast v1, Ljava/lang/String;

    .line 32325
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32319
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32321
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32322
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32323
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32325
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2

    .prologue
    .line 32305
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 32312
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32302
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

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

    .line 32346
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 32347
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32350
    :goto_8
    return v1

    .line 32347
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32349
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

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
    .line 32386
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

    .line 32355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getSerializedSize()I

    .line 32356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 32357
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32359
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 32360
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32362
    :cond_21
    return-void
.end method
