.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private returnFirstName_:Z

.field private returnGaiaId_:Z

.field private title_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23784
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23972
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 24032
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 24075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 24153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23785
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 23786
    return-void
.end method

.method static synthetic access$32100()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23779
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 23791
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23789
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 3

    .prologue
    .line 23822
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    .line 23823
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23824
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23826
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 6

    .prologue
    .line 23840
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 23841
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23842
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23843
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23844
    or-int/lit8 v2, v2, 0x1

    .line 23846
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32302(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23847
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23848
    or-int/lit8 v2, v2, 0x2

    .line 23850
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32402(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23851
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23852
    or-int/lit8 v2, v2, 0x4

    .line 23854
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32502(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23855
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 23856
    or-int/lit8 v2, v2, 0x8

    .line 23858
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32602(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23859
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 23860
    or-int/lit8 v2, v2, 0x10

    .line 23862
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnFirstName_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32702(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z

    .line 23863
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 23864
    or-int/lit8 v2, v2, 0x20

    .line 23866
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->returnGaiaId_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32802(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Z)Z

    .line 23867
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 23868
    or-int/lit8 v2, v2, 0x40

    .line 23870
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$32902(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23871
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->access$33002(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;I)I

    .line 23872
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23795
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23796
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23797
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 23799
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23800
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 23801
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 23803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23804
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 23805
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23806
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 23807
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 23809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23810
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24068
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 24070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24071
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24178
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 24180
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24020
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24021
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 24023
    return-object p0
.end method

.method public clearReturnFirstName()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24125
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 24128
    return-object p0
.end method

.method public clearReturnGaiaId()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24146
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 24149
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24099
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24100
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 24102
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 23989
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23990
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23992
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 23814
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

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
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 24037
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 24159
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24161
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 24164
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
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
    .registers 2

    .prologue
    .line 23818
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24001
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 24002
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24003
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24004
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 24007
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
    .line 24116
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    return v0
.end method

.method public getReturnGaiaId()Z
    .registers 2

    .prologue
    .line 24137
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 24081
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24082
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24083
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 24086
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
    .line 23977
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 24034
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 23998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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
    .line 24113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasReturnGaiaId()Z
    .registers 3

    .prologue
    .line 24134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 24077
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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

    .line 23974
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

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
    .line 23902
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24056
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 24058
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 24064
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24065
    return-object p0

    .line 24061
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_1f
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
    .line 23779
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23779
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

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
    .line 23779
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23910
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 23911
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_7e

    .line 23916
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23918
    :sswitch_d
    return-object p0

    .line 23923
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23924
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v3

    .line 23925
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    if-eqz v3, :cond_0

    .line 23926
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23927
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_0

    .line 23932
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23933
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 23937
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 23938
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->hasAudience()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 23939
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 23941
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23942
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    goto :goto_0

    .line 23946
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23947
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 23951
    :sswitch_57
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23952
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    goto :goto_0

    .line 23956
    :sswitch_64
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23957
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    goto :goto_0

    .line 23961
    :sswitch_71
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23962
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 23911
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_4a
        0x28 -> :sswitch_57
        0x30 -> :sswitch_64
        0x3a -> :sswitch_71
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23876
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23898
    :cond_6
    :goto_6
    return-object p0

    .line 23877
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23878
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23880
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23881
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23883
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 23884
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23886
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 23887
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23889
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasReturnFirstName()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 23890
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getReturnFirstName()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23892
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasReturnGaiaId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 23893
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getReturnGaiaId()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 23895
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23896
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 24050
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 24052
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24053
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24040
    if-nez p1, :cond_8

    .line 24041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24043
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 24045
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24046
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24168
    if-nez p1, :cond_8

    .line 24169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24171
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24172
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 24174
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24011
    if-nez p1, :cond_8

    .line 24012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24014
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24015
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->id_:Ljava/lang/Object;

    .line 24017
    return-object p0
.end method

.method public setReturnFirstName(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24120
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnFirstName_:Z

    .line 24122
    return-object p0
.end method

.method public setReturnGaiaId(Z)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24141
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->returnGaiaId_:Z

    .line 24143
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24090
    if-nez p1, :cond_8

    .line 24091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24093
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 24094
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->title_:Ljava/lang/Object;

    .line 24096
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23980
    if-nez p1, :cond_8

    .line 23981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23983
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->bitField0_:I

    .line 23984
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 23986
    return-object p0
.end method
