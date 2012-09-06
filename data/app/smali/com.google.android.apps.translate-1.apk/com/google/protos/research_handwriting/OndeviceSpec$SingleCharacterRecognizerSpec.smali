.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleCharacterRecognizerSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    }
.end annotation


# static fields
.field public static final CLASSIFIER_TYPE_FIELD_NUMBER:I = 0x4

.field public static final INKREADER_FIELD_NUMBER:I = 0x1

.field public static final MODEL_FIELD_NUMBER:I = 0x2

.field public static final NUM_RESULTS_FIELD_NUMBER:I = 0x5

.field public static final SUPPORTED_CHARS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private classifierType_:Ljava/lang/Object;

.field private inkreader_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/Object;

.field private numResults_:I

.field private supportedChars_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2931
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;-><init>(Z)V

    sput-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 2932
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->initFields()V

    .line 2933
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2307
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2466
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedIsInitialized:B

    .line 2495
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedSerializedSize:I

    .line 2308
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2302
    invoke-direct {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2466
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedIsInitialized:B

    .line 2495
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedSerializedSize:I

    .line 2309
    return-void
.end method

.method static synthetic access$3402(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I

    return p1
.end method

.method static synthetic access$3902(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2302
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    return p1
.end method

.method private getClassifierTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 2439
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2440
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2442
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 2445
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 1

    .prologue
    .line 2313
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    return-object v0
.end method

.method private getInkreaderBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 2343
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2344
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2346
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 2349
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    .line 2375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2376
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2378
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    .line 2381
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSupportedCharsBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    .line 2407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2408
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2410
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    .line 2413
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 2461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    .line 2462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    .line 2463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 2464
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I

    .line 2465
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 2599
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3200()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2602
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2568
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    .line 2569
    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2570
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    .line 2572
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2579
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    .line 2580
    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2581
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    .line 2583
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2535
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2541
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2589
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2595
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2557
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2546
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2552
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->access$3100(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassifierType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 2425
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2426
    check-cast v0, Ljava/lang/String;

    .line 2434
    :goto_8
    return-object v0

    .line 2428
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2430
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2431
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2432
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->classifierType_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2434
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2

    .prologue
    .line 2317
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    return-object v0
.end method

.method public getInkreader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 2329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2330
    check-cast v0, Ljava/lang/String;

    .line 2338
    :goto_8
    return-object v0

    .line 2332
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2334
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2335
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2336
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->inkreader_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2338
    goto :goto_8
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    .line 2361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2362
    check-cast v0, Ljava/lang/String;

    .line 2370
    :goto_8
    return-object v0

    .line 2364
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2366
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2367
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2368
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->model_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2370
    goto :goto_8
.end method

.method public getNumResults()I
    .registers 2

    .prologue
    .line 2456
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2497
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedSerializedSize:I

    .line 2498
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 2522
    :goto_8
    return v0

    .line 2500
    :cond_9
    const/4 v0, 0x0

    .line 2501
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 2502
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getInkreaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2505
    :cond_19
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 2506
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2509
    :cond_28
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 2510
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getSupportedCharsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2513
    :cond_38
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 2514
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getClassifierTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2517
    :cond_49
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_59

    .line 2518
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2521
    :cond_59
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getSupportedChars()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    .line 2393
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2394
    check-cast v0, Ljava/lang/String;

    .line 2402
    :goto_8
    return-object v0

    .line 2396
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2398
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2399
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2400
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->supportedChars_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2402
    goto :goto_8
.end method

.method public hasClassifierType()Z
    .registers 3

    .prologue
    .line 2421
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

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

.method public hasInkreader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2325
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasModel()Z
    .registers 3

    .prologue
    .line 2357
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

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

.method public hasNumResults()Z
    .registers 3

    .prologue
    .line 2453
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSupportedChars()Z
    .registers 3

    .prologue
    .line 2389
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

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
    const/4 v0, 0x1

    .line 2468
    iget-byte v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedIsInitialized:B

    .line 2469
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 2472
    :goto_8
    return v0

    .line 2469
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 2471
    :cond_b
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2600
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2604
    invoke-static {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

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
    .line 2529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2477
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getSerializedSize()I

    .line 2478
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 2479
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getInkreaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2481
    :cond_13
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 2482
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2484
    :cond_20
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 2485
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getSupportedCharsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2487
    :cond_2e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 2488
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getClassifierTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2490
    :cond_3d
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 2491
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->numResults_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2493
    :cond_4b
    return-void
.end method
