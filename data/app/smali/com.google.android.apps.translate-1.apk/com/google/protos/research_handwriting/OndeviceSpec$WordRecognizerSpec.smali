.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordRecognizerSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    }
.end annotation


# static fields
.field public static final BEAM_SIZE_FIELD_NUMBER:I = 0x7

.field public static final CLASSIFIER_TYPE_FIELD_NUMBER:I = 0x3

.field public static final INKREADER_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_MODEL_FIELD_NUMBER:I = 0x5

.field public static final LM_ORDER_FIELD_NUMBER:I = 0x6

.field public static final MODEL_FIELD_NUMBER:I = 0x2

.field public static final SYMBOLS_FIELD_NUMBER:I = 0x4

.field public static final WEIGHTS_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

.field private static final serialVersionUID:J


# instance fields
.field private beamSize_:I

.field private bitField0_:I

.field private classifierType_:Ljava/lang/Object;

.field private inkreader_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private lmOrder_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/Object;

.field private symbols_:Ljava/lang/Object;

.field private weights_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3846
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;-><init>(Z)V

    sput-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 3847
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->initFields()V

    .line 3848
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2979
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3197
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedIsInitialized:B

    .line 3235
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedSerializedSize:I

    .line 2980
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2974
    invoke-direct {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3197
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedIsInitialized:B

    .line 3235
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedSerializedSize:I

    .line 2981
    return-void
.end method

.method static synthetic access$4302(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I

    return p1
.end method

.method static synthetic access$5000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2974
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    return p1
.end method

.method private getClassifierTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 3079
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3080
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3082
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 3085
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 1

    .prologue
    .line 2985
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    return-object v0
.end method

.method private getInkreaderBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 3015
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3016
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3018
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 3021
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    .line 3143
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3144
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3146
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    .line 3149
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    .line 3047
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3048
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3050
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    .line 3053
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSymbolsBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    .line 3111
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3112
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3114
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    .line 3117
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

    .line 3188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 3189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    .line 3190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 3191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    .line 3192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    .line 3193
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I

    .line 3194
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I

    .line 3195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    .line 3196
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 3353
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4100()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2
    .parameter

    .prologue
    .line 3356
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3322
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    .line 3323
    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3324
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    .line 3326
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3333
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    .line 3334
    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3335
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    .line 3337
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3289
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3295
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3343
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3349
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3311
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3317
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3300
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3306
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBeamSize()I
    .registers 2

    .prologue
    .line 3170
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I

    return v0
.end method

.method public getClassifierType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    .line 3065
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3066
    check-cast v0, Ljava/lang/String;

    .line 3074
    :goto_8
    return-object v0

    .line 3068
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3070
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3071
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3072
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3074
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2

    .prologue
    .line 2989
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    return-object v0
.end method

.method public getInkreader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    .line 3001
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3002
    check-cast v0, Ljava/lang/String;

    .line 3010
    :goto_8
    return-object v0

    .line 3004
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3006
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3007
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3008
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3010
    goto :goto_8
.end method

.method public getLanguageModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    .line 3129
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3130
    check-cast v0, Ljava/lang/String;

    .line 3138
    :goto_8
    return-object v0

    .line 3132
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3134
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3135
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3136
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3138
    goto :goto_8
.end method

.method public getLmOrder()I
    .registers 2

    .prologue
    .line 3160
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    .line 3033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3034
    check-cast v0, Ljava/lang/String;

    .line 3042
    :goto_8
    return-object v0

    .line 3036
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3038
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3039
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3040
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3042
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3237
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedSerializedSize:I

    .line 3238
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 3276
    :goto_8
    return v0

    .line 3240
    :cond_9
    const/4 v0, 0x0

    .line 3241
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 3242
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getInkreaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3245
    :cond_19
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 3246
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3249
    :cond_28
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 3250
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getClassifierTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3253
    :cond_38
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 3254
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getSymbolsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3257
    :cond_49
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5b

    .line 3258
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3261
    :cond_5b
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6b

    .line 3262
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3265
    :cond_6b
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7b

    .line 3266
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3271
    :cond_7b
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getWeightsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 3272
    add-int/2addr v0, v1

    .line 3273
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getWeightsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3275
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedSerializedSize:I

    goto/16 :goto_8
.end method

.method public getSymbols()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3096
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    .line 3097
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3098
    check-cast v0, Ljava/lang/String;

    .line 3106
    :goto_8
    return-object v0

    .line 3100
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3102
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3103
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3104
    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 3106
    goto :goto_8
.end method

.method public getWeights(I)F
    .registers 3
    .parameter

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getWeightsCount()I
    .registers 2

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWeightsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    return-object v0
.end method

.method public hasBeamSize()Z
    .registers 3

    .prologue
    .line 3167
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public hasClassifierType()Z
    .registers 3

    .prologue
    .line 3061
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public hasInkreader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2997
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLanguageModel()Z
    .registers 3

    .prologue
    .line 3125
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public hasLmOrder()Z
    .registers 3

    .prologue
    .line 3157
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public hasModel()Z
    .registers 3

    .prologue
    .line 3029
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public hasSymbols()Z
    .registers 3

    .prologue
    .line 3093
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3199
    iget-byte v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedIsInitialized:B

    .line 3200
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 3203
    :goto_8
    return v0

    .line 3200
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 3202
    :cond_b
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3354
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-static {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

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
    .line 3283
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

    .line 3208
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getSerializedSize()I

    .line 3209
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 3210
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getInkreaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3212
    :cond_15
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 3213
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3215
    :cond_22
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 3216
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getClassifierTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3218
    :cond_30
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 3219
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getSymbolsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3221
    :cond_3d
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 3222
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3224
    :cond_4d
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 3225
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3227
    :cond_5b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 3228
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3230
    :cond_69
    const/4 v0, 0x0

    move v1, v0

    :goto_6b
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    .line 3231
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6b

    .line 3233
    :cond_86
    return-void
.end method
