.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:D

.field private grammarId_:Ljava/lang/Object;

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private sentence_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3960
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 4034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 4123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 3831
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->maybeForceBuilderInitialization()V

    .line 3832
    return-void
.end method

.method static synthetic access$3800()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 1

    .prologue
    .line 3825
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 1

    .prologue
    .line 3837
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInterpretationIsMutable()V
    .registers 3

    .prologue
    .line 4037
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 4038
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 4039
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4041
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3835
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .registers 3

    .prologue
    .line 3862
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    .line 3863
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3864
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3866
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .registers 6

    .prologue
    .line 3870
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 3871
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3872
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3873
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3874
    or-int/lit8 v2, v2, 0x1

    .line 3876
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4002(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3878
    or-int/lit8 v2, v2, 0x2

    .line 3880
    :cond_1c
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4102(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;D)D

    .line 3881
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 3882
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 3883
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3885
    :cond_36
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4202(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/util/List;)Ljava/util/List;

    .line 3886
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 3887
    or-int/lit8 v2, v2, 0x4

    .line 3889
    :cond_43
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4302(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4402(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;I)I

    .line 3891
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 3

    .prologue
    .line 3854
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .registers 2

    .prologue
    .line 3858
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .registers 3
    .parameter "index"

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .registers 2

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 4015
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

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

.method public hasSentence()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3962
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 3923
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->hasSentence()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3937
    :cond_7
    :goto_7
    return v1

    .line 3927
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3931
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getInterpretationCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 3932
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3931
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3937
    :cond_22
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3825
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3944
    const/4 v2, 0x0

    .line 3946
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 3951
    if-eqz v2, :cond_10

    .line 3952
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    .line 3955
    :cond_10
    return-object p0

    .line 3947
    :catch_11
    move-exception v1

    .line 3948
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-object v2, v0

    .line 3949
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 3951
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 3952
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3895
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3919
    :cond_6
    :goto_6
    return-object p0

    .line 3896
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3897
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3898
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4000(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3901
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3902
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getConfidence()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->setConfidence(D)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    .line 3904
    :cond_26
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3905
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 3906
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 3907
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3914
    :cond_44
    :goto_44
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasGrammarId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3915
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3916
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4300(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    goto :goto_6

    .line 3909
    :cond_57
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 3910
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_44
.end method

.method public setConfidence(D)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4021
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4022
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    .line 4024
    return-object p0
.end method
