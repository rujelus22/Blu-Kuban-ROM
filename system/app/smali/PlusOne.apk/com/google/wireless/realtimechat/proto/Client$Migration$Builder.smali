.class public final Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$MigrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Migration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Migration;",
        "Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$MigrationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private migratedAt_:J

.field private newId_:Ljava/lang/Object;

.field private oldId_:Ljava/lang/Object;

.field private replacedNewId_:Ljava/lang/Object;

.field private replacedOldId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 16122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 16179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 16215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 15935
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->maybeForceBuilderInitialization()V

    .line 15936
    return-void
.end method

.method static synthetic access$21300()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 1

    .prologue
    .line 15929
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 1

    .prologue
    .line 15941
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15939
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 3

    .prologue
    .line 15968
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    .line 15969
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15970
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15972
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 6

    .prologue
    .line 15986
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Migration;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 15987
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15988
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15989
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15990
    or-int/lit8 v2, v2, 0x1

    .line 15992
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$21502(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15993
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15994
    or-int/lit8 v2, v2, 0x2

    .line 15996
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$21602(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15997
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15998
    or-int/lit8 v2, v2, 0x4

    .line 16000
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$21702(Lcom/google/wireless/realtimechat/proto/Client$Migration;J)J

    .line 16001
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 16002
    or-int/lit8 v2, v2, 0x8

    .line 16004
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$21802(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16005
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 16006
    or-int/lit8 v2, v2, 0x10

    .line 16008
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$21902(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16009
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->access$22002(Lcom/google/wireless/realtimechat/proto/Client$Migration;I)I

    .line 16010
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3

    .prologue
    .line 15945
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 15947
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 15949
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    .line 15951
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 15953
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 15955
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 15956
    return-object p0
.end method

.method public clearMigratedAt()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3

    .prologue
    .line 16172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    .line 16175
    return-object p0
.end method

.method public clearNewId()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 16146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16147
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 16149
    return-object p0
.end method

.method public clearOldId()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 16110
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16111
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 16113
    return-object p0
.end method

.method public clearReplacedNewId()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 16239
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16240
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedNewId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 16242
    return-object p0
.end method

.method public clearReplacedOldId()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 16203
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16204
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedOldId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 16206
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3

    .prologue
    .line 15960
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

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
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15929
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 15964
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    return-object v0
.end method

.method public getMigratedAt()J
    .registers 3

    .prologue
    .line 16163
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    return-wide v0
.end method

.method public getNewId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16127
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 16128
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16129
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16130
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 16133
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

.method public getOldId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16091
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 16092
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16093
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16094
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 16097
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

.method public getReplacedNewId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16220
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 16221
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16223
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 16226
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

.method public getReplacedOldId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 16185
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16186
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16187
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 16190
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

.method public hasMigratedAt()Z
    .registers 3

    .prologue
    .line 16160
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

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

.method public hasNewId()Z
    .registers 3

    .prologue
    .line 16124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

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

.method public hasOldId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16088
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReplacedNewId()Z
    .registers 3

    .prologue
    .line 16217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

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

.method public hasReplacedOldId()Z
    .registers 3

    .prologue
    .line 16181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

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
    .line 15929
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

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
    .line 15929
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16042
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 16043
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 16048
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16050
    :sswitch_d
    return-object p0

    .line 16055
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16056
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    goto :goto_0

    .line 16060
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16061
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    goto :goto_0

    .line 16065
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16066
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    goto :goto_0

    .line 16070
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16071
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    goto :goto_0

    .line 16075
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16076
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    goto :goto_0

    .line 16043
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x2a -> :sswitch_35
        0x32 -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16030
    :cond_6
    :goto_6
    return-object p0

    .line 16015
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->hasOldId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16016
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->setOldId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 16018
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->hasNewId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16019
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->setNewId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 16021
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->hasMigratedAt()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 16022
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getMigratedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->setMigratedAt(J)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 16024
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->hasReplacedOldId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 16025
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedOldId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->setReplacedOldId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 16027
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->hasReplacedNewId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16028
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedNewId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->setReplacedNewId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    goto :goto_6
.end method

.method public setMigratedAt(J)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16166
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16167
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->migratedAt_:J

    .line 16169
    return-object p0
.end method

.method public setNewId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16137
    if-nez p1, :cond_8

    .line 16138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16140
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16141
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->newId_:Ljava/lang/Object;

    .line 16143
    return-object p0
.end method

.method public setOldId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16101
    if-nez p1, :cond_8

    .line 16102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16104
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16105
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->oldId_:Ljava/lang/Object;

    .line 16107
    return-object p0
.end method

.method public setReplacedNewId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16230
    if-nez p1, :cond_8

    .line 16231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16233
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16234
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedNewId_:Ljava/lang/Object;

    .line 16236
    return-object p0
.end method

.method public setReplacedOldId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16194
    if-nez p1, :cond_8

    .line 16195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16197
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->bitField0_:I

    .line 16198
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->replacedOldId_:Ljava/lang/Object;

    .line 16200
    return-object p0
.end method
