.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;",
        ">;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

.field private languageCode_:Ljava/lang/Object;

.field private languageName_:Ljava/lang/Object;

.field private maximalParallelRequests_:I

.field private name_:Ljava/lang/Object;

.field private secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

.field private singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

.field private timeoutBeforeNextRequest_:I

.field private useSpaces_:Z

.field private verbosity_:I

.field private wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1267
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 1310
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 1353
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 1396
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 824
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maybeForceBuilderInitialization()V

    .line 825
    return-void
.end method

.method static synthetic access$400(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 818
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 880
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 883
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 830
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 828
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 871
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 873
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 887
    new-instance v2, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V

    .line 888
    iget v3, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 889
    const/4 v1, 0x0

    .line 890
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_97

    .line 893
    :goto_e
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageCode_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$702(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 895
    or-int/lit8 v0, v0, 0x2

    .line 897
    :cond_1a
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->languageName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$802(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 899
    or-int/lit8 v0, v0, 0x4

    .line 901
    :cond_26
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$902(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 903
    or-int/lit8 v0, v0, 0x8

    .line 905
    :cond_33
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->verbosity_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1002(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I

    .line 906
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 907
    or-int/lit8 v0, v0, 0x10

    .line 909
    :cond_40
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->maximalParallelRequests_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1102(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I

    .line 910
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 911
    or-int/lit8 v0, v0, 0x20

    .line 913
    :cond_4d
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->timeoutBeforeNextRequest_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1202(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I

    .line 914
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5a

    .line 915
    or-int/lit8 v0, v0, 0x40

    .line 917
    :cond_5a
    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->useSpaces_:Z
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1302(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Z)Z

    .line 918
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_67

    .line 919
    or-int/lit16 v0, v0, 0x80

    .line 921
    :cond_67
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1402(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 922
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_74

    .line 923
    or-int/lit16 v0, v0, 0x100

    .line 925
    :cond_74
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1502(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 926
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_81

    .line 927
    or-int/lit16 v0, v0, 0x200

    .line 929
    :cond_81
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1602(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 930
    and-int/lit16 v1, v3, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_8e

    .line 931
    or-int/lit16 v0, v0, 0x400

    .line 933
    :cond_8e
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1702(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 934
    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->access$1802(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;I)I

    .line 935
    return-object v2

    :cond_97
    move v0, v1

    goto/16 :goto_e
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 835
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 836
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 838
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 839
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 840
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 841
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    .line 842
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 843
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    .line 844
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 845
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    .line 846
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 847
    iput-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    .line 848
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 849
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 850
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 851
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 852
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 853
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 854
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 855
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 856
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 857
    return-object p0
.end method

.method public clearCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1303
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 1305
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1306
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1099
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1100
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1102
    return-object p0
.end method

.method public clearLanguageName()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1136
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1138
    return-object p0
.end method

.method public clearMaximalParallelRequests()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1218
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    .line 1221
    return-object p0
.end method

.method public clearName()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1171
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1172
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1174
    return-object p0
.end method

.method public clearSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1432
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 1434
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1435
    return-object p0
.end method

.method public clearSingleCharSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1346
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 1348
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1349
    return-object p0
.end method

.method public clearTimeoutBeforeNextRequest()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    .line 1242
    return-object p0
.end method

.method public clearUseSpaces()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1260
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    .line 1263
    return-object p0
.end method

.method public clearVerbosity()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1197
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1198
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    .line 1200
    return-object p0
.end method

.method public clearWordSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 1389
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 1391
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1392
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3

    .prologue
    .line 861
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

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
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2

    .prologue
    .line 865
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1081
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1082
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1083
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1086
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getLanguageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1117
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1118
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1119
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1122
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getMaximalParallelRequests()I
    .registers 2

    .prologue
    .line 1209
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1153
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1154
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1155
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1158
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method public getSingleCharSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    return-object v0
.end method

.method public getTimeoutBeforeNextRequest()I
    .registers 2

    .prologue
    .line 1230
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    return v0
.end method

.method public getUseSpaces()Z
    .registers 2

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    return v0
.end method

.method public getVerbosity()I
    .registers 2

    .prologue
    .line 1188
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    return v0
.end method

.method public getWordSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    return-object v0
.end method

.method public hasCloudSpec()Z
    .registers 3

    .prologue
    .line 1269
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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

    .line 1077
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1113
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1206
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1149
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1398
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1312
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1227
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1248
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1185
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .line 1355
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 977
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCloudSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1291
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1293
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 1299
    :goto_20
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1300
    return-object p0

    .line 1296
    :cond_27
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    goto :goto_20
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 818
    check-cast p1, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-virtual {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 986
    sparse-switch v0, :sswitch_data_de

    .line 991
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    :sswitch_d
    return-object p0

    .line 998
    :sswitch_e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 999
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    goto :goto_0

    .line 1003
    :sswitch_1b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    goto :goto_0

    .line 1008
    :sswitch_28
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1013
    :sswitch_35
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1014
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    goto :goto_0

    .line 1018
    :sswitch_42
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1019
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    goto :goto_0

    .line 1023
    :sswitch_4f
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    goto :goto_0

    .line 1028
    :sswitch_5c
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    goto :goto_0

    .line 1033
    :sswitch_69
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    .line 1034
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->hasCloudSpec()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1035
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1037
    :cond_7a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1038
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setCloudSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    goto/16 :goto_0

    .line 1042
    :sswitch_86
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    .line 1043
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->hasSingleCharSpec()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1044
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getSingleCharSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    .line 1046
    :cond_97
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1047
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setSingleCharSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    goto/16 :goto_0

    .line 1051
    :sswitch_a3
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    .line 1052
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->hasWordSpec()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1053
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getWordSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 1055
    :cond_b4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1056
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setWordSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    goto/16 :goto_0

    .line 1060
    :sswitch_c0
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    .line 1061
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->hasSecondaryRecognizer()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 1062
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 1064
    :cond_d1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1065
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setSecondaryRecognizer(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    goto/16 :goto_0

    .line 986
    nop

    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x42 -> :sswitch_69
        0x4a -> :sswitch_86
        0x52 -> :sswitch_a3
        0x5a -> :sswitch_c0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 939
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 973
    :cond_6
    :goto_6
    return-object p0

    .line 940
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 941
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 943
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasLanguageName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 944
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setLanguageName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 946
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 947
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 949
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasVerbosity()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 950
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getVerbosity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setVerbosity(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 952
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasMaximalParallelRequests()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 953
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getMaximalParallelRequests()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setMaximalParallelRequests(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 955
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasTimeoutBeforeNextRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 956
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getTimeoutBeforeNextRequest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setTimeoutBeforeNextRequest(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 958
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasUseSpaces()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 959
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getUseSpaces()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->setUseSpaces(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 961
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasCloudSpec()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 962
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeCloudSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 964
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasSingleCharSpec()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 965
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getSingleCharSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeSingleCharSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 967
    :cond_7c
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasWordSpec()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 968
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getWordSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeWordSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    .line 970
    :cond_89
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 971
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getSecondaryRecognizer()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeSecondaryRecognizer(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    goto/16 :goto_6
.end method

.method public mergeSecondaryRecognizer(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1420
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1422
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 1428
    :goto_20
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1429
    return-object p0

    .line 1425
    :cond_27
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    goto :goto_20
.end method

.method public mergeSingleCharSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1334
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1336
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 1342
    :goto_20
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1343
    return-object p0

    .line 1339
    :cond_27
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    goto :goto_20
.end method

.method public mergeWordSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1377
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1379
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 1385
    :goto_20
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1386
    return-object p0

    .line 1382
    :cond_27
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    goto :goto_20
.end method

.method public setCloudSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1285
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 1287
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1288
    return-object p0
.end method

.method public setCloudSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1275
    if-nez p1, :cond_8

    .line 1276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1278
    :cond_8
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->cloudSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    .line 1280
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1281
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1090
    if-nez p1, :cond_8

    .line 1091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1093
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1094
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1096
    return-object p0
.end method

.method setLanguageCode(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1105
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1106
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageCode_:Ljava/lang/Object;

    .line 1108
    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1126
    if-nez p1, :cond_8

    .line 1127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1129
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1130
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1132
    return-object p0
.end method

.method setLanguageName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1141
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1142
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->languageName_:Ljava/lang/Object;

    .line 1144
    return-void
.end method

.method public setMaximalParallelRequests(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1212
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1213
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->maximalParallelRequests_:I

    .line 1215
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1162
    if-nez p1, :cond_8

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1165
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1166
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1168
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1177
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1178
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->name_:Ljava/lang/Object;

    .line 1180
    return-void
.end method

.method public setSecondaryRecognizer(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1414
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 1416
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1417
    return-object p0
.end method

.method public setSecondaryRecognizer(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1404
    if-nez p1, :cond_8

    .line 1405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1407
    :cond_8
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->secondaryRecognizer_:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    .line 1409
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1410
    return-object p0
.end method

.method public setSingleCharSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1328
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 1330
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1331
    return-object p0
.end method

.method public setSingleCharSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1318
    if-nez p1, :cond_8

    .line 1319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1321
    :cond_8
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->singleCharSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$SingleCharacterRecognizerSpec;

    .line 1323
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1324
    return-object p0
.end method

.method public setTimeoutBeforeNextRequest(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1233
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1234
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->timeoutBeforeNextRequest_:I

    .line 1236
    return-object p0
.end method

.method public setUseSpaces(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1254
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1255
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->useSpaces_:Z

    .line 1257
    return-object p0
.end method

.method public setVerbosity(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1191
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1192
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->verbosity_:I

    .line 1194
    return-object p0
.end method

.method public setWordSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1371
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 1373
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1374
    return-object p0
.end method

.method public setWordSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1361
    if-nez p1, :cond_8

    .line 1362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1364
    :cond_8
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->wordSpec_:Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    .line 1366
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->bitField0_:I

    .line 1367
    return-object p0
.end method
