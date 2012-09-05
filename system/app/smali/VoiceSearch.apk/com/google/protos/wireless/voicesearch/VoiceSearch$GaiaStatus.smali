.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaiaStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;


# instance fields
.field private bitField0_:I

.field private errorMessage_:Ljava/lang/Object;

.field private errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7279
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    .line 7619
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    .line 7620
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->initFields()V

    .line 7621
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 7236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7342
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7237
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->initFields()V

    .line 7238
    const/4 v2, 0x0

    .line 7240
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 7241
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_5a

    .line 7242
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 7243
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_5e

    .line 7248
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 7250
    const/4 v0, 0x1

    goto :goto_d

    .line 7245
    :sswitch_1e
    const/4 v0, 0x1

    .line 7246
    goto :goto_d

    .line 7255
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 7256
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    move-result-object v5

    .line 7257
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    if-eqz v5, :cond_d

    .line 7258
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    .line 7259
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 7270
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    :catch_33
    move-exception v1

    .line 7271
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 7276
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->makeExtensionsImmutable()V

    throw v6

    .line 7264
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    .line 7265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 7272
    .end local v4           #tag:I
    :catch_4b
    move-exception v1

    .line 7273
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 7276
    .end local v1           #e:Ljava/io/IOException;
    :cond_5a
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->makeExtensionsImmutable()V

    .line 7278
    return-void

    .line 7243
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x12 -> :sswitch_3e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 7214
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7219
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7342
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7214
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7342
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7362
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7222
    return-void
.end method

.method static synthetic access$8702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7214
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7214
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7214
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7214
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .registers 1

    .prologue
    .line 7226
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7339
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7341
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .registers 1

    .prologue
    .line 7439
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->access$8500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7442
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .registers 2

    .prologue
    .line 7230
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7327
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7328
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7329
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7331
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;

    .line 7334
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

.method public getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    .registers 2

    .prologue
    .line 7302
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7364
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    .line 7365
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 7377
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 7367
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 7368
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 7369
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7372
    :cond_1b
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 7373
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7376
    :cond_2a
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedSerializedSize:I

    move v1, v0

    .line 7377
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasErrorMessage()Z
    .registers 3

    .prologue
    .line 7309
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

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

.method public hasErrorStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7299
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

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

    .line 7344
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    .line 7345
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7348
    :goto_8
    return v1

    .line 7345
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7347
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .registers 2

    .prologue
    .line 7440
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7214
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .registers 2

    .prologue
    .line 7444
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7383
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

    .line 7353
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getSerializedSize()I

    .line 7354
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 7355
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7357
    :cond_14
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 7358
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7360
    :cond_21
    return-void
.end method
