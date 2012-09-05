.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pitch_:D

.field private speed_:D

.field private volume_:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18375
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 18703
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .line 18704
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->initFields()V

    .line 18705
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

    .line 18331
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18426
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18332
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->initFields()V

    .line 18333
    const/4 v2, 0x0

    .line 18335
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 18336
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 18337
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 18338
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 18343
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 18345
    const/4 v0, 0x1

    goto :goto_d

    .line 18340
    :sswitch_1e
    const/4 v0, 0x1

    .line 18341
    goto :goto_d

    .line 18350
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 18366
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 18367
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 18372
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->makeExtensionsImmutable()V

    throw v4

    .line 18355
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 18368
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 18369
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

    .line 18360
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    .line 18361
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 18372
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->makeExtensionsImmutable()V

    .line 18374
    return-void

    .line 18338
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0x9 -> :sswitch_20
        0x11 -> :sswitch_38
        0x19 -> :sswitch_54
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 18309
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18314
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18426
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18316
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18309
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18426
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18449
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18317
    return-void
.end method

.method static synthetic access$22502(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    return-wide p1
.end method

.method static synthetic access$22602(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    return-wide p1
.end method

.method static synthetic access$22702(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18309
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    return-wide p1
.end method

.method static synthetic access$22802(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18309
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .registers 1

    .prologue
    .line 18321
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 18422
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    .line 18423
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    .line 18424
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    .line 18425
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .registers 1

    .prologue
    .line 18530
    #calls: Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->access$22300()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18533
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .registers 2

    .prologue
    .line 18325
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    return-object v0
.end method

.method public getPitch()D
    .registers 3

    .prologue
    .line 18408
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 18451
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    .line 18452
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 18468
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 18454
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 18455
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 18456
    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18459
    :cond_17
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 18460
    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18463
    :cond_24
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 18464
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 18467
    :cond_33
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedSerializedSize:I

    move v1, v0

    .line 18468
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSpeed()D
    .registers 3

    .prologue
    .line 18398
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    return-wide v0
.end method

.method public getVolume()D
    .registers 3

    .prologue
    .line 18418
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    return-wide v0
.end method

.method public hasPitch()Z
    .registers 3

    .prologue
    .line 18405
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

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

.method public hasSpeed()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18395
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVolume()Z
    .registers 3

    .prologue
    .line 18415
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

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

    .line 18428
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    .line 18429
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 18432
    :goto_8
    return v1

    .line 18429
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 18431
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .registers 2

    .prologue
    .line 18531
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18309
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .registers 2

    .prologue
    .line 18535
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

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
    .line 18474
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18437
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getSerializedSize()I

    .line 18438
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 18439
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18441
    :cond_10
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 18442
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18444
    :cond_1b
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 18445
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18447
    :cond_28
    return-void
.end method
