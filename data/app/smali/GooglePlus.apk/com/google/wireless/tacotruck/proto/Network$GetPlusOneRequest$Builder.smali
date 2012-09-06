.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private returnFirstName_:Z

.field private returnGaiaId_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25681
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 25705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25540
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 25541
    return-void
.end method

.method static synthetic access$34900()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 25534
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 25546
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25544
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    .registers 3

    .prologue
    .line 25571
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    .line 25572
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25573
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25575
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    .registers 6

    .prologue
    .line 25589
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 25590
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25591
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25592
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25593
    or-int/lit8 v2, v2, 0x1

    .line 25595
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->access$35102(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 25596
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25597
    or-int/lit8 v2, v2, 0x2

    .line 25599
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->access$35202(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25600
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25601
    or-int/lit8 v2, v2, 0x4

    .line 25603
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnFirstName_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->access$35302(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Z)Z

    .line 25604
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 25605
    or-int/lit8 v2, v2, 0x8

    .line 25607
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->returnGaiaId_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->access$35402(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;Z)Z

    .line 25608
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->access$35502(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;I)I

    .line 25609
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25550
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25551
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 25552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25555
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    .line 25556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25557
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    .line 25558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25559
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 25729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25730
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25732
    return-object p0
.end method

.method public clearReturnFirstName()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 25755
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    .line 25758
    return-object p0
.end method

.method public clearReturnGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 25776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    .line 25779
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 25698
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25699
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 25701
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 25563
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

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
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;
    .registers 2

    .prologue
    .line 25567
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25710
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25711
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25712
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25713
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25716
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

.method public getReturnFirstName()Z
    .registers 2

    .prologue
    .line 25746
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 25767
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 25686
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 25707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

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

.method public hasReturnFirstName()Z
    .registers 3

    .prologue
    .line 25743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

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

.method public hasReturnGaiaId()Z
    .registers 3

    .prologue
    .line 25764
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25683
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

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
    .line 25630
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
    .line 25534
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25534
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

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
    .line 25534
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25638
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 25639
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 25644
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25646
    :sswitch_d
    return-object p0

    .line 25651
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 25652
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    .line 25653
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    if-eqz v2, :cond_0

    .line 25654
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25655
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_0

    .line 25660
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 25665
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    goto :goto_0

    .line 25670
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    goto :goto_0

    .line 25639
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 25613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25626
    :cond_6
    :goto_6
    return-object p0

    .line 25614
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25615
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 25617
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25618
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 25620
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->hasReturnFirstName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 25621
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getReturnFirstName()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    .line 25623
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->hasReturnGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25624
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest;->getReturnGaiaId()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25720
    if-nez p1, :cond_8

    .line 25721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25723
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25724
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 25726
    return-object p0
.end method

.method public setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25749
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25750
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnFirstName_:Z

    .line 25752
    return-object p0
.end method

.method public setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25771
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->returnGaiaId_:Z

    .line 25773
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25689
    if-nez p1, :cond_8

    .line 25690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25692
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->bitField0_:I

    .line 25693
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 25695
    return-object p0
.end method
