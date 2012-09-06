.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private summaryText_:Ljava/lang/Object;

.field private titleText_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27953
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 28117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 28153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 27954
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->maybeForceBuilderInitialization()V

    .line 27955
    return-void
.end method

.method static synthetic access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27948
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$34800()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 1

    .prologue
    .line 27948
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27992
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    .line 27993
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 27994
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 27997
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 1

    .prologue
    .line 27960
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27958
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3

    .prologue
    .line 27983
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    .line 27984
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27985
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27987
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 6

    .prologue
    .line 28001
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 28002
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28003
    const/4 v2, 0x0

    .line 28004
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28005
    or-int/lit8 v2, v2, 0x1

    .line 28007
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->access$35002(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28008
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28009
    or-int/lit8 v2, v2, 0x2

    .line 28011
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->access$35102(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28012
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_31

    .line 28013
    or-int/lit8 v1, v2, 0x4

    .line 28015
    :goto_28
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->access$35202(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28016
    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->access$35302(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;I)I

    .line 28017
    return-object v0

    :cond_31
    move v1, v2

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 27964
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 27966
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 27967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 27968
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 27969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 27970
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 27971
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 28105
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28106
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 28108
    return-object p0
.end method

.method public clearSummaryText()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 28177
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28178
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSummaryText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 28180
    return-object p0
.end method

.method public clearTitleText()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 28141
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28142
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getTitleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 28144
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 3

    .prologue
    .line 27975
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

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
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2

    .prologue
    .line 27979
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27948
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28086
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 28087
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 28088
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28089
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 28092
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getSummaryText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28158
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 28159
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 28160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28161
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    move-object v2, v1

    .line 28164
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28122
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 28123
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 28124
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28125
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    move-object v2, v1

    .line 28128
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 28083
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSummaryText()Z
    .registers 3

    .prologue
    .line 28155
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

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

.method public hasTitleText()Z
    .registers 3

    .prologue
    .line 28119
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 28035
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28037
    const/4 v0, 0x0

    .line 28039
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 28021
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 28031
    :goto_7
    return-object v0

    .line 28022
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28023
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    .line 28025
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasTitleText()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 28026
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->setTitleText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    .line 28028
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasSummaryText()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 28029
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSummaryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->setSummaryText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    :cond_2f
    move-object v0, p0

    .line 28031
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28047
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 28048
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 28053
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28055
    :sswitch_d
    return-object p0

    .line 28060
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28061
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 28065
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28066
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    goto :goto_0

    .line 28070
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28071
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    goto :goto_0

    .line 28048
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
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
    .line 27948
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27948
    check-cast p1, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

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
    .line 27948
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28096
    if-nez p1, :cond_8

    .line 28097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28099
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28100
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 28102
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 28111
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28112
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->id_:Ljava/lang/Object;

    .line 28114
    return-void
.end method

.method public setSummaryText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28168
    if-nez p1, :cond_8

    .line 28169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28171
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28172
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 28174
    return-object p0
.end method

.method setSummaryText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 28183
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28184
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->summaryText_:Ljava/lang/Object;

    .line 28186
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28132
    if-nez p1, :cond_8

    .line 28133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28135
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28136
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 28138
    return-object p0
.end method

.method setTitleText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 28147
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->bitField0_:I

    .line 28148
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->titleText_:Ljava/lang/Object;

    .line 28150
    return-void
.end method
