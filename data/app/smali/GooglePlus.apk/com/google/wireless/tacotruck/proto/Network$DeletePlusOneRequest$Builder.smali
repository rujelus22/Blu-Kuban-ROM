.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private plusoneId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24952
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24753
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 24754
    return-void
.end method

.method static synthetic access$33700()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24747
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24759
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24757
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 3

    .prologue
    .line 24782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    .line 24783
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24784
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24786
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 6

    .prologue
    .line 24800
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 24801
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24802
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24803
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24804
    or-int/lit8 v2, v2, 0x1

    .line 24806
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$33902(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24807
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24808
    or-int/lit8 v2, v2, 0x2

    .line 24810
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$34002(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24811
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 24812
    or-int/lit8 v2, v2, 0x4

    .line 24814
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$34102(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24815
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$34202(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;I)I

    .line 24816
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24765
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24768
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24769
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24770
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24941
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24943
    return-object p0
.end method

.method public clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24904
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24905
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24907
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24970
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24972
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 24774
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

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
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24922
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24923
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24924
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24927
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 2

    .prologue
    .line 24778
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24885
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24886
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24887
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24888
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24891
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 24957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 24918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

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

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24882
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24954
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 24834
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
    .line 24747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24747
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

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
    .line 24747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24842
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24843
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 24848
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24850
    :sswitch_d
    return-object p0

    .line 24855
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    goto :goto_0

    .line 24860
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 24865
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24866
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    .line 24867
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    if-eqz v2, :cond_0

    .line 24868
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24869
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_0

    .line 24843
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 24820
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24830
    :cond_6
    :goto_6
    return-object p0

    .line 24821
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24822
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 24824
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24825
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 24827
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24828
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24931
    if-nez p1, :cond_8

    .line 24932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24934
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24935
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24937
    return-object p0
.end method

.method public setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24895
    if-nez p1, :cond_8

    .line 24896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24898
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24899
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24901
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24960
    if-nez p1, :cond_8

    .line 24961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24963
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24964
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24966
    return-object p0
.end method
