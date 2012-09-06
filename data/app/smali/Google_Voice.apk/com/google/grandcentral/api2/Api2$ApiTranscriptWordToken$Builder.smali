.class public final Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private end_:F

.field private start_:F

.field private word_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15815
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->maybeForceBuilderInitialization()V

    .line 15816
    return-void
.end method

.method static synthetic access$18800()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 1

    .prologue
    .line 15809
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 1

    .prologue
    .line 15821
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15819
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3

    .prologue
    .line 15846
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    .line 15847
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15848
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15850
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 6

    .prologue
    .line 15854
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 15855
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15856
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15857
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15858
    or-int/lit8 v2, v2, 0x1

    .line 15860
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19002(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15861
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15862
    or-int/lit8 v2, v2, 0x2

    .line 15864
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->start_:F

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->start_:F
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19102(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F

    .line 15865
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15866
    or-int/lit8 v2, v2, 0x4

    .line 15868
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->end_:F

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->end_:F
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19202(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F

    .line 15869
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15870
    or-int/lit8 v2, v2, 0x8

    .line 15872
    :cond_35
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->confidence_:F

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19302(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;F)F

    .line 15873
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19402(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;I)I

    .line 15874
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15825
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15826
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15827
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15828
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->start_:F

    .line 15829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15830
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->end_:F

    .line 15831
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15832
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->confidence_:F

    .line 15833
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15834
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConfidence()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 16033
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 16034
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->confidence_:F

    .line 16036
    return-object p0
.end method

.method public clearEnd()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 16012
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 16013
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->end_:F

    .line 16015
    return-object p0
.end method

.method public clearStart()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 15991
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->start_:F

    .line 15994
    return-object p0
.end method

.method public clearWord()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 2

    .prologue
    .line 15960
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15961
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15963
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3

    .prologue
    .line 15838
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

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
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    .prologue
    .line 16024
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 2

    .prologue
    .line 15842
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()F
    .registers 2

    .prologue
    .line 16003
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->end_:F

    return v0
.end method

.method public getStart()F
    .registers 2

    .prologue
    .line 15982
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->start_:F

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15929
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15930
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15931
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15932
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15935
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

.method public getWordBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15940
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15941
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15942
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15944
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15947
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

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 16021
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

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

.method public hasEnd()Z
    .registers 3

    .prologue
    .line 16000
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    .line 15979
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

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

.method public hasWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15926
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

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
    .line 15897
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->hasWord()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15899
    const/4 v0, 0x0

    .line 15901
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 15878
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15893
    :cond_6
    :goto_6
    return-object p0

    .line 15879
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasWord()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15880
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15881
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->word_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->access$19000(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15884
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 15885
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getStart()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setStart(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 15887
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15888
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getEnd()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setEnd(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 15890
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15891
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15908
    const/4 v2, 0x0

    .line 15910
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 15915
    if-eqz v2, :cond_10

    .line 15916
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 15919
    :cond_10
    return-object p0

    .line 15911
    :catch_11
    move-exception v1

    .line 15912
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-object v2, v0

    .line 15913
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 15915
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 15916
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    :cond_21
    throw v3
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
    .line 15809
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15809
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

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
    .line 15809
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16027
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 16028
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->confidence_:F

    .line 16030
    return-object p0
.end method

.method public setEnd(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16006
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 16007
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->end_:F

    .line 16009
    return-object p0
.end method

.method public setStart(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15985
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15986
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->start_:F

    .line 15988
    return-object p0
.end method

.method public setWord(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15951
    if-nez p1, :cond_8

    .line 15952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15954
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15955
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15957
    return-object p0
.end method

.method public setWordBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15967
    if-nez p1, :cond_8

    .line 15968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15970
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->bitField0_:I

    .line 15971
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->word_:Ljava/lang/Object;

    .line 15973
    return-object p0
.end method
