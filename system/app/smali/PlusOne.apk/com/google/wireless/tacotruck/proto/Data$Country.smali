.class public final Lcom/google/wireless/tacotruck/proto/Data$Country;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40551
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Country;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 40552
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->initFields()V

    .line 40553
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40160
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40242
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 40262
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 40161
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40155
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40162
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40242
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 40262
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 40162
    return-void
.end method

.method static synthetic access$54702(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40155
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54802(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40155
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54902(Lcom/google/wireless/tacotruck/proto/Data$Country;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40155
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    return p1
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40195
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 40196
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40197
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40199
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 40202
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 1

    .prologue
    .line 40166
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40227
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 40228
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40229
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40231
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 40234
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
    .line 40239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 40240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 40241
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 40354
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->access$54500()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40357
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40181
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    .line 40182
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40183
    check-cast v1, Ljava/lang/String;

    .line 40191
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40185
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40187
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40188
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40189
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40191
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40155
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 40170
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Country;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40213
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    .line 40214
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40215
    check-cast v1, Ljava/lang/String;

    .line 40223
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40217
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40219
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40220
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40221
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40223
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 40264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    .line 40265
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 40277
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 40267
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 40268
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 40269
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40272
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 40273
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40276
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedSerializedSize:I

    move v1, v0

    .line 40277
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40178
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 40210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

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

    .line 40244
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

    .line 40245
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 40248
    :goto_8
    return v1

    .line 40245
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 40247
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->memoizedIsInitialized:B

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
    .line 40284
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

    .line 40253
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getSerializedSize()I

    .line 40254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 40255
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40257
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 40258
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40260
    :cond_1f
    return-void
.end method
