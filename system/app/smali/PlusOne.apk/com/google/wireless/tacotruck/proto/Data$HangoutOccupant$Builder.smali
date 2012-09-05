.class public final Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;",
        "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupantOrBuilder;"
    }
.end annotation


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36906
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37044
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 37080
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 37137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36907
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->maybeForceBuilderInitialization()V

    .line 36908
    return-void
.end method

.method static synthetic access$49600()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 36901
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 36913
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36911
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 3

    .prologue
    .line 36938
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    .line 36939
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36940
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36942
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 6

    .prologue
    .line 36956
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;-><init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 36957
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 36958
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36959
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36960
    or-int/lit8 v2, v2, 0x1

    .line 36962
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->access$49802(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36963
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36964
    or-int/lit8 v2, v2, 0x2

    .line 36966
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->access$49902(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36967
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 36968
    or-int/lit8 v2, v2, 0x4

    .line 36970
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->access$50002(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;J)J

    .line 36971
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 36972
    or-int/lit8 v2, v2, 0x8

    .line 36974
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->access$50102(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36975
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->access$50202(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;I)I

    .line 36976
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3

    .prologue
    .line 36917
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 36919
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 36920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 36921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 36922
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    .line 36923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 36924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 36926
    return-object p0
.end method

.method public clearAvatarUrl()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 37104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37105
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 37107
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 37161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37162
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 37164
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3

    .prologue
    .line 37130
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    .line 37133
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 37068
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37069
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 37071
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3

    .prologue
    .line 36930
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

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
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37085
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 37086
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37087
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37088
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 37091
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
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36901
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 2

    .prologue
    .line 36934
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 37143
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37145
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 37148
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
    .line 37121
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37049
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 37050
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37051
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37052
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 37055
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

.method public hasAvatarUrl()Z
    .registers 3

    .prologue
    .line 37082
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 37139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    .line 37118
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37046
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

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
    .line 36901
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

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
    .line 36901
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37005
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 37006
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 37011
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37013
    :sswitch_d
    return-object p0

    .line 37018
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37019
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 37023
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 37028
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    goto :goto_0

    .line 37033
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 37006
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 36980
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36993
    :cond_6
    :goto_6
    return-object p0

    .line 36981
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36982
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    .line 36984
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->hasAvatarUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36985
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->setAvatarUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    .line 36987
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36988
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    .line 36990
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36991
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    goto :goto_6
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37095
    if-nez p1, :cond_8

    .line 37096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37098
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37099
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 37101
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37152
    if-nez p1, :cond_8

    .line 37153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37155
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37156
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 37158
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37124
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37125
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->gaiaId_:J

    .line 37127
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37059
    if-nez p1, :cond_8

    .line 37060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37062
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->bitField0_:I

    .line 37063
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 37065
    return-object p0
.end method
