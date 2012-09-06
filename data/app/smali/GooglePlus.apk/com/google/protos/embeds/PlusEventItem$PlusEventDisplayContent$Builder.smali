.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private descriptionHtml_:Ljava/lang/Object;

.field private descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

.field private eventTimeRange_:Ljava/lang/Object;

.field private eventTimeStart_:Ljava/lang/Object;

.field private videoEmbedUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5075
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeStart_:Ljava/lang/Object;

    .line 5267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeRange_:Ljava/lang/Object;

    .line 5303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 5339
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 5382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->videoEmbedUrl_:Ljava/lang/Object;

    .line 5076
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->maybeForceBuilderInitialization()V

    .line 5077
    return-void
.end method

.method static synthetic access$6200()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 1

    .prologue
    .line 5070
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 1

    .prologue
    .line 5082
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5080
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 3

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    .line 5110
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5111
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5113
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 6

    .prologue
    .line 5127
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 5128
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5129
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5130
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5131
    or-int/lit8 v2, v2, 0x1

    .line 5133
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeStart_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6402(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5134
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5135
    or-int/lit8 v2, v2, 0x2

    .line 5137
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeRange_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6502(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5138
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5139
    or-int/lit8 v2, v2, 0x4

    .line 5141
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6602(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5142
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 5143
    or-int/lit8 v2, v2, 0x8

    .line 5145
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6702(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 5146
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 5147
    or-int/lit8 v2, v2, 0x10

    .line 5149
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->videoEmbedUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6802(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5150
    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->access$6902(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;I)I

    .line 5151
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 2

    .prologue
    .line 5086
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeStart_:Ljava/lang/Object;

    .line 5088
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeRange_:Ljava/lang/Object;

    .line 5090
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 5092
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5093
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 5094
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->videoEmbedUrl_:Ljava/lang/Object;

    .line 5096
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5097
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3

    .prologue
    .line 5101
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

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
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5070
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 2

    .prologue
    .line 5105
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionSegments()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 2

    .prologue
    .line 5344
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    return-object v0
.end method

.method public hasDescriptionSegments()Z
    .registers 3

    .prologue
    .line 5341
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 5175
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDescriptionSegments(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5363
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 5365
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilder(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 5371
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5372
    return-object p0

    .line 5368
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    goto :goto_20
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
    .line 5070
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5070
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

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
    .line 5070
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5183
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5184
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 5189
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5191
    :sswitch_d
    return-object p0

    .line 5196
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5197
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeStart_:Ljava/lang/Object;

    goto :goto_0

    .line 5201
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5202
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeRange_:Ljava/lang/Object;

    goto :goto_0

    .line 5206
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5207
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 5211
    :sswitch_35
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    .line 5212
    .local v0, subBuilder:Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->hasDescriptionSegments()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 5213
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->getDescriptionSegments()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    .line 5215
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5216
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->setDescriptionSegments(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    goto :goto_0

    .line 5220
    .end local v0           #subBuilder:Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    :sswitch_51
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5221
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->videoEmbedUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 5184
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5155
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5171
    :cond_6
    :goto_6
    return-object p0

    .line 5156
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasEventTimeStart()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5157
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->setEventTimeStart(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    .line 5159
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasEventTimeRange()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5160
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeRange()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->setEventTimeRange(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    .line 5162
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5163
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    .line 5165
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasDescriptionSegments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5166
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionSegments()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeDescriptionSegments(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    .line 5168
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->hasVideoEmbedUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5169
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getVideoEmbedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->setVideoEmbedUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    goto :goto_6
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5318
    if-nez p1, :cond_8

    .line 5319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5321
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5322
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionHtml_:Ljava/lang/Object;

    .line 5324
    return-object p0
.end method

.method public setDescriptionSegments(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5347
    if-nez p1, :cond_8

    .line 5348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5350
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 5352
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5353
    return-object p0
.end method

.method public setEventTimeRange(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5282
    if-nez p1, :cond_8

    .line 5283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5285
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5286
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeRange_:Ljava/lang/Object;

    .line 5288
    return-object p0
.end method

.method public setEventTimeStart(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5246
    if-nez p1, :cond_8

    .line 5247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5249
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5250
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->eventTimeStart_:Ljava/lang/Object;

    .line 5252
    return-object p0
.end method

.method public setVideoEmbedUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5397
    if-nez p1, :cond_8

    .line 5398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5400
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->bitField0_:I

    .line 5401
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->videoEmbedUrl_:Ljava/lang/Object;

    .line 5403
    return-object p0
.end method
