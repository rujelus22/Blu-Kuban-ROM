.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private input_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation
.end field

.field private integrated_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private postMessageTargetOrigin_:Ljava/lang/Object;

.field private upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38727
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .line 38728
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->initFields()V

    .line 38729
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37962
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38140
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedIsInitialized:B

    .line 38172
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedSerializedSize:I

    .line 37963
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38140
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedIsInitialized:B

    .line 38172
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedSerializedSize:I

    .line 37964
    return-void
.end method

.method static synthetic access$53000(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$53002(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$53102(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object p1
.end method

.method static synthetic access$53202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object p1
.end method

.method static synthetic access$53302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z

    return p1
.end method

.method static synthetic access$53502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37957
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    return p1
.end method

.method private getContinueUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38079
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    .line 38080
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38081
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38083
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    .line 38086
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 1

    .prologue
    .line 37968
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    return-object v0
.end method

.method private getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38121
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38122
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38123
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38125
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38128
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

.method private initFields()V
    .registers 2

    .prologue
    .line 38133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    .line 38134
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 38135
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->GOOGLE_PLUS:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    .line 38136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    .line 38137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z

    .line 38138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38139
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 1

    .prologue
    .line 38280
    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->access$52800()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 38283
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->access$52700(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 38045
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38065
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    .line 38066
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38067
    check-cast v1, Ljava/lang/String;

    .line 38075
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38069
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38071
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38072
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38073
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->continueUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38075
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37957
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 2

    .prologue
    .line 37972
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    return-object v0
.end method

.method public getInput(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 3
    .parameter "index"

    .prologue
    .line 38031
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getInputCount()I
    .registers 2

    .prologue
    .line 38028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38021
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    return-object v0
.end method

.method public getInputOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 38035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;

    return-object v0
.end method

.method public getInputOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputFieldOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38025
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    return-object v0
.end method

.method public getIntegrated()Z
    .registers 2

    .prologue
    .line 38097
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z

    return v0
.end method

.method public getPostMessageTargetOrigin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38107
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38108
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38109
    check-cast v1, Ljava/lang/String;

    .line 38117
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38111
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38113
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38114
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38115
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->postMessageTargetOrigin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38117
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 38174
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedSerializedSize:I

    .line 38175
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 38203
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 38177
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 38178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 38179
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 38178
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 38182
    :cond_24
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_31

    .line 38183
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 38186
    :cond_31
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_43

    .line 38187
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 38190
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 38191
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 38194
    :cond_52
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 38195
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 38198
    :cond_62
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_74

    .line 38199
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 38202
    :cond_74
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 38203
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getUpgradeType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;
    .registers 2

    .prologue
    .line 38055
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38042
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 38062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

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

.method public hasIntegrated()Z
    .registers 3

    .prologue
    .line 38094
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

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

.method public hasPostMessageTargetOrigin()Z
    .registers 3

    .prologue
    .line 38104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

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

.method public hasUpgradeType()Z
    .registers 3

    .prologue
    .line 38052
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

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

    .line 38142
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedIsInitialized:B

    .line 38143
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38146
    :goto_8
    return v1

    .line 38143
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38145
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37957
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38281
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37957
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    .registers 2

    .prologue
    .line 38285
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

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
    .line 38210
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 38151
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getSerializedSize()I

    .line 38152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 38153
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->input_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38152
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 38155
    :cond_1d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_28

    .line 38156
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38158
    :cond_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_38

    .line 38159
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->upgradeType_:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$UpgradeType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 38161
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_45

    .line 38162
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38164
    :cond_45
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_53

    .line 38165
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->integrated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38167
    :cond_53
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_63

    .line 38168
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38170
    :cond_63
    return-void
.end method
