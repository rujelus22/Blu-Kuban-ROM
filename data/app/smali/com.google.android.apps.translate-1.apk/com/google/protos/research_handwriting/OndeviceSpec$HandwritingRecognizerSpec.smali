.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandwritingRecognizerSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    }
.end annotation


# static fields
.field public static final CLOUD_SPEC_FIELD_NUMBER:I = 0x8

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_NAME_FIELD_NUMBER:I = 0x2

.field public static final MAXIMAL_PARALLEL_REQUESTS_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final SECONDARY_RECOGNIZER_FIELD_NUMBER:I = 0xb

.field public static final SINGLE_CHAR_SPEC_FIELD_NUMBER:I = 0x9

.field public static final TIMEOUT_BEFORE_NEXT_REQUEST_FIELD_NUMBER:I = 0x6

.field public static final USE_SPACES_FIELD_NUMBER:I = 0x7

.field public static final VERBOSITY_FIELD_NUMBER:I = 0x4

.field public static final WORD_SPEC_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

.field private languageCode_:Ljava/lang/Object;

.field private languageName_:Ljava/lang/Object;

.field private maximalParallelRequests_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

.field private singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

.field private timeoutBeforeNextRequest_:I

.field private useSpaces_:Z

.field private verbosity_:I

.field private wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1442
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;-><init>(Z)V

    sput-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 1443
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->initFields()V

    .line 1444
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 433
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 636
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedIsInitialized:B

    .line 683
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedSerializedSize:I

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 636
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedIsInitialized:B

    .line 683
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedSerializedSize:I

    .line 435
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 1

    .prologue
    .line 439
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method private getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    .line 469
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 470
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 472
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    .line 475
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getLanguageNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    .line 501
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 502
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 504
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    .line 507
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    .line 533
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 534
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 536
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    .line 539
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 624
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    .line 625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    .line 627
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I

    .line 628
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I

    .line 629
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I

    .line 630
    iput-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z

    .line 631
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 632
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 633
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 634
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 635
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 811
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$500()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2
    .parameter

    .prologue
    .line 814
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 782
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    .line 784
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    .line 792
    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 793
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    .line 795
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2

    .prologue
    .line 443
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    .line 455
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 456
    check-cast v0, Ljava/lang/String;

    .line 464
    :goto_8
    return-object v0

    .line 458
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 460
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 462
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 464
    goto :goto_8
.end method

.method public getLanguageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    .line 487
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 488
    check-cast v0, Ljava/lang/String;

    .line 496
    :goto_8
    return-object v0

    .line 490
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 492
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 494
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 496
    goto :goto_8
.end method

.method public getMaximalParallelRequests()I
    .registers 2

    .prologue
    .line 560
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    .line 519
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 520
    check-cast v0, Ljava/lang/String;

    .line 528
    :goto_8
    return-object v0

    .line 522
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 524
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 526
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 528
    goto :goto_8
.end method

.method public getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 685
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedSerializedSize:I

    .line 686
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 734
    :goto_a
    return v0

    .line 688
    :cond_b
    const/4 v0, 0x0

    .line 689
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 690
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    :cond_1b
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2a

    .line 694
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    :cond_2a
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3a

    .line 698
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 701
    :cond_3a
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_47

    .line 702
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_47
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_57

    .line 706
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_57
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_67

    .line 710
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 713
    :cond_67
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_77

    .line 714
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    :cond_77
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_86

    .line 718
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 721
    :cond_86
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_97

    .line 722
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_97
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a8

    .line 726
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_a8
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b9

    .line 730
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    :cond_b9
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedSerializedSize:I

    goto/16 :goto_a
.end method

.method public getSingleCharSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    return-object v0
.end method

.method public getTimeoutBeforeNextRequest()I
    .registers 2

    .prologue
    .line 570
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I

    return v0
.end method

.method public getUseSpaces()Z
    .registers 2

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z

    return v0
.end method

.method public getVerbosity()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I

    return v0
.end method

.method public getWordSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    return-object v0
.end method

.method public hasCloudSpec()Z
    .registers 3

    .prologue
    .line 587
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLanguageCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 451
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLanguageName()Z
    .registers 3

    .prologue
    .line 483
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

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

.method public hasMaximalParallelRequests()Z
    .registers 3

    .prologue
    .line 557
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

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

.method public hasSecondaryRecognizer()Z
    .registers 3

    .prologue
    .line 617
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSingleCharSpec()Z
    .registers 3

    .prologue
    .line 597
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimeoutBeforeNextRequest()Z
    .registers 3

    .prologue
    .line 567
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUseSpaces()Z
    .registers 3

    .prologue
    .line 577
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasVerbosity()Z
    .registers 3

    .prologue
    .line 547
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

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

.method public hasWordSpec()Z
    .registers 3

    .prologue
    .line 607
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 638
    iget-byte v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedIsInitialized:B

    .line 639
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 642
    :goto_8
    return v0

    .line 639
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 641
    :cond_b
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 812
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 816
    invoke-static {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

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
    .line 741
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getSerializedSize()I

    .line 648
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 649
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 651
    :cond_15
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 652
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 654
    :cond_22
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 655
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 657
    :cond_30
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 658
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 660
    :cond_3b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 661
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 663
    :cond_49
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 664
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 666
    :cond_57
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    .line 667
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 669
    :cond_65
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 670
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 672
    :cond_72
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_81

    .line 673
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 675
    :cond_81
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_90

    .line 676
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 678
    :cond_90
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9f

    .line 679
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 681
    :cond_9f
    return-void
.end method
