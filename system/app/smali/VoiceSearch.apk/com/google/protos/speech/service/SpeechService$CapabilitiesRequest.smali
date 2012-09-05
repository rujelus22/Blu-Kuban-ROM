.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilitiesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final capabilitiesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private queryRecognitionLanguages_:Z

.field private querySynthesisVoices_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 8802
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 9082
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    .line 9083
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->initFields()V

    .line 9091
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->capabilitiesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 8763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8842
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8764
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->initFields()V

    .line 8765
    const/4 v2, 0x0

    .line 8767
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8768
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 8769
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 8770
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 8775
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 8777
    const/4 v0, 0x1

    goto :goto_d

    .line 8772
    :sswitch_1e
    const/4 v0, 0x1

    .line 8773
    goto :goto_d

    .line 8782
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    .line 8783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 8793
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 8794
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 8799
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->makeExtensionsImmutable()V

    throw v4

    .line 8787
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    .line 8788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 8795
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 8796
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

    .line 8799
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->makeExtensionsImmutable()V

    .line 8801
    return-void

    .line 8770
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_38
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
    .line 8741
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8842
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8741
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8842
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8862
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8749
    return-void
.end method

.method static synthetic access$10602(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8741
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8741
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8741
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .registers 1

    .prologue
    .line 8753
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8839
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    .line 8840
    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    .line 8841
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 1

    .prologue
    .line 8939
    #calls: Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->access$10400()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8942
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .registers 2

    .prologue
    .line 8757
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    return-object v0
.end method

.method public getQueryRecognitionLanguages()Z
    .registers 2

    .prologue
    .line 8825
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    return v0
.end method

.method public getQuerySynthesisVoices()Z
    .registers 2

    .prologue
    .line 8835
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8864
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    .line 8865
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8877
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8867
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8868
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 8869
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8872
    :cond_17
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 8873
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8876
    :cond_24
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 8877
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasQueryRecognitionLanguages()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8822
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQuerySynthesisVoices()Z
    .registers 3

    .prologue
    .line 8832
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

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

    .line 8844
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    .line 8845
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8848
    :goto_8
    return v1

    .line 8845
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8847
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 2

    .prologue
    .line 8940
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 2

    .prologue
    .line 8944
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

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
    .line 8883
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

    .line 8853
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getSerializedSize()I

    .line 8854
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 8855
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8857
    :cond_10
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 8858
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8860
    :cond_1b
    return-void
.end method
