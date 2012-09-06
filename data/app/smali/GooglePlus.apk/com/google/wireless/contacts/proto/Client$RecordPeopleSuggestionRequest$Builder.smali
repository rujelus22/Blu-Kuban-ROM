.class public final Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;",
        "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field private bitField0_:I

.field private circleId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11835
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11981
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 12005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 12041
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 12065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 11836
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 11837
    return-void
.end method

.method static synthetic access$15600()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 1

    .prologue
    .line 11830
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 1

    .prologue
    .line 11842
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11840
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 3

    .prologue
    .line 11867
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    .line 11868
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11869
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11871
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 6

    .prologue
    .line 11885
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 11886
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11887
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11888
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11889
    or-int/lit8 v2, v2, 0x1

    .line 11891
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->access$15802(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11892
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11893
    or-int/lit8 v2, v2, 0x2

    .line 11895
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->access$15902(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11896
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 11897
    or-int/lit8 v2, v2, 0x4

    .line 11899
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    #setter for: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->access$16002(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11900
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 11901
    or-int/lit8 v2, v2, 0x8

    .line 11903
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->access$16102(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11904
    #setter for: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->access$16202(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;I)I

    .line 11905
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 11846
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11847
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11848
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 11850
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11851
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11852
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 11854
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11855
    return-object p0
.end method

.method public clearActionType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 11998
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11999
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 12001
    return-object p0
.end method

.method public clearCircleId()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 12089
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12090
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getCircleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 12092
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 12029
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12030
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 12032
    return-object p0
.end method

.method public clearUiLocation()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 12058
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12059
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 12061
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3

    .prologue
    .line 11859
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

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
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 2

    .prologue
    .line 11986
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12070
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 12071
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12072
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12073
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 12076
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
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 2

    .prologue
    .line 11863
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12010
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 12011
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12012
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12013
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 12016
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

.method public getUiLocation()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 2

    .prologue
    .line 12046
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    return-object v0
.end method

.method public hasActionType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11983
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 12067
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 12007
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

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

.method public hasUiLocation()Z
    .registers 3

    .prologue
    .line 12043
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

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
    .line 11926
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
    .line 11830
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11830
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

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
    .line 11830
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11934
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11935
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_4e

    .line 11940
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11942
    :sswitch_d
    return-object p0

    .line 11947
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11948
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    move-result-object v2

    .line 11949
    .local v2, value:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    if-eqz v2, :cond_0

    .line 11950
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11951
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    goto :goto_0

    .line 11956
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11957
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 11961
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11962
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    move-result-object v2

    .line 11963
    .local v2, value:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    if-eqz v2, :cond_0

    .line 11964
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11965
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_0

    .line 11970
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    :sswitch_41
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11971
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    goto :goto_0

    .line 11935
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_41
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 11909
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11922
    :cond_6
    :goto_6
    return-object p0

    .line 11910
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11911
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getActionType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->setActionType(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    .line 11913
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 11914
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    .line 11916
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->hasUiLocation()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11917
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getUiLocation()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->setUiLocation(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    .line 11919
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->hasCircleId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11920
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getCircleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->setCircleId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    goto :goto_6
.end method

.method public setActionType(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11989
    if-nez p1, :cond_8

    .line 11990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11992
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 11993
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11995
    return-object p0
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12080
    if-nez p1, :cond_8

    .line 12081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12083
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12084
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->circleId_:Ljava/lang/Object;

    .line 12086
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12020
    if-nez p1, :cond_8

    .line 12021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12023
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12024
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->id_:Ljava/lang/Object;

    .line 12026
    return-object p0
.end method

.method public setUiLocation(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12049
    if-nez p1, :cond_8

    .line 12050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12052
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->bitField0_:I

    .line 12053
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 12055
    return-object p0
.end method
