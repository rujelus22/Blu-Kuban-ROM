.class public final Lcom/google/protos/speech/common/Alternates$AlternateParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateParams;


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private unit_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateParams$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 461
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 462
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->initFields()V

    .line 463
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 184
    iput-byte v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedIsInitialized:B

    .line 207
    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedSerializedSize:I

    .line 49
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->initFields()V

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 53
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 54
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 55
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 60
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 62
    const/4 v0, 0x1

    goto :goto_d

    .line 57
    :sswitch_1e
    const/4 v0, 0x1

    .line 58
    goto :goto_d

    .line 67
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 68
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 83
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 84
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 89
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->makeExtensionsImmutable()V

    throw v4

    .line 72
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 85
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 89
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->makeExtensionsImmutable()V

    .line 91
    return-void

    .line 55
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_54
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateParams;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 184
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedIsInitialized:B

    .line 207
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 184
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedIsInitialized:B

    .line 207
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedSerializedSize:I

    .line 34
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 181
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 182
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I

    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .registers 1

    .prologue
    .line 288
    #calls: Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->access$100()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 291
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method public getMaxSpanLength()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 209
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedSerializedSize:I

    .line 210
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 226
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 212
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 213
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 214
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    :cond_17
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 218
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 221
    :cond_24
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 222
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 225
    :cond_33
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedSerializedSize:I

    move v1, v0

    .line 226
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUnit()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxTotalSpanLength()Z
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

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

.method public hasUnit()Z
    .registers 3

    .prologue
    .line 173
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

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

    .line 186
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedIsInitialized:B

    .line 187
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 190
    :goto_8
    return v1

    .line 187
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 189
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .registers 2

    .prologue
    .line 289
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .registers 2

    .prologue
    .line 293
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

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
    .line 232
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

    .line 195
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getSerializedSize()I

    .line 196
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 197
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 199
    :cond_10
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 200
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 202
    :cond_1b
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 203
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 205
    :cond_28
    return-void
.end method
