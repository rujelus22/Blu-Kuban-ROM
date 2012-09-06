.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayDelayMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36667
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 36668
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->initFields()V

    .line 36669
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36101
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36267
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 36293
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 36102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36103
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36267
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 36293
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 36103
    return-void
.end method

.method static synthetic access$49102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object p1
.end method

.method static synthetic access$49202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    return p1
.end method

.method static synthetic access$49502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36096
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 1

    .prologue
    .line 36107
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36208
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 36209
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36210
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36212
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 36215
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36240
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 36241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 36247
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
    .line 36262
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 36264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 36265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    .line 36266
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 36393
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->access$48900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36396
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 36111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getDisplayDelayMs()I
    .registers 2

    .prologue
    .line 36258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36295
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 36296
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 36316
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 36298
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 36299
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 36300
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 36303
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 36304
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36307
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 36308
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36311
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 36312
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 36315
    :cond_4a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    move v1, v0

    .line 36316
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36194
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 36195
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36196
    check-cast v1, Ljava/lang/String;

    .line 36204
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36198
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36200
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36201
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36202
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36204
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2

    .prologue
    .line 36184
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36226
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 36227
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36228
    check-cast v1, Ljava/lang/String;

    .line 36236
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36230
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36232
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36233
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36234
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36236
    goto :goto_8
.end method

.method public hasDisplayDelayMs()Z
    .registers 3

    .prologue
    .line 36255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 36191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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

    .line 36181
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 36223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 36269
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 36270
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36273
    :goto_8
    return v1

    .line 36270
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36272
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36394
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36398
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

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
    .line 36323
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

    .line 36278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getSerializedSize()I

    .line 36279
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 36280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 36282
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 36283
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36285
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 36286
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36288
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 36289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 36291
    :cond_3d
    return-void
.end method
