.class public final Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
        "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidenceScore_:F

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21796
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21797
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->maybeForceBuilderInitialization()V

    .line 21798
    return-void
.end method

.method static synthetic access$28900()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 1

    .prologue
    .line 21791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 1

    .prologue
    .line 21803
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21801
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 3

    .prologue
    .line 21826
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    .line 21827
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21828
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21830
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 6

    .prologue
    .line 21844
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 21845
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21846
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21847
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21848
    or-int/lit8 v2, v2, 0x1

    .line 21850
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->access$29102(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;J)J

    .line 21851
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21852
    or-int/lit8 v2, v2, 0x2

    .line 21854
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->access$29202(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21855
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 21856
    or-int/lit8 v2, v2, 0x4

    .line 21858
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->access$29302(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;F)F

    .line 21859
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->access$29402(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;I)I

    .line 21860
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 3

    .prologue
    .line 21807
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21808
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    .line 21809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21812
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    .line 21813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21814
    return-object p0
.end method

.method public clearConfidenceScore()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 2

    .prologue
    .line 21991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    .line 21994
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 2

    .prologue
    .line 21965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21966
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21968
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 3

    .prologue
    .line 21934
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21935
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    .line 21937
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 3

    .prologue
    .line 21818
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

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
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidenceScore()F
    .registers 2

    .prologue
    .line 21982
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 2

    .prologue
    .line 21822
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21946
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21947
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21948
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21949
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21952
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 21925
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    return-wide v0
.end method

.method public hasConfidenceScore()Z
    .registers 3

    .prologue
    .line 21979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 21943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21922
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 21878
    const/4 v0, 0x1

    return v0
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
    .line 21791
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21791
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

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
    .line 21791
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21886
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 21887
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 21892
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21894
    :sswitch_d
    return-object p0

    .line 21899
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21900
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    goto :goto_0

    .line 21904
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    goto :goto_0

    .line 21909
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 21887
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x15 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 21864
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21874
    :cond_6
    :goto_6
    return-object p0

    .line 21865
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21866
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    .line 21868
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21869
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    .line 21871
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->hasConfidenceScore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21872
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getConfidenceScore()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->setConfidenceScore(F)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    goto :goto_6
.end method

.method public setConfidenceScore(F)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21986
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->confidenceScore_:F

    .line 21988
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21956
    if-nez p1, :cond_8

    .line 21957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21959
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21960
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21962
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->bitField0_:I

    .line 21929
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->gaiaId_:J

    .line 21931
    return-object p0
.end method
