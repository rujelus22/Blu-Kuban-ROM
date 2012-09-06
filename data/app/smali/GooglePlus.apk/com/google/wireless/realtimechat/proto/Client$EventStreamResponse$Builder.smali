.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private earliest_:J

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation
.end field

.field private latest_:J

.field private more_:Z

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27394
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 27028
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->maybeForceBuilderInitialization()V

    .line 27029
    return-void
.end method

.method static synthetic access$36500()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 1

    .prologue
    .line 27022
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 1

    .prologue
    .line 27034
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventIsMutable()V
    .registers 3

    .prologue
    .line 27245
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 27246
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27247
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27249
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27032
    return-void
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 27312
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27313
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27315
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27305
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27306
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27308
    return-object p0
.end method

.method public addEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27288
    if-nez p2, :cond_8

    .line 27289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27291
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27292
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27294
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 27298
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27299
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27301
    return-object p0
.end method

.method public addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27278
    if-nez p1, :cond_8

    .line 27279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27281
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27282
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27284
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 3

    .prologue
    .line 27063
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    .line 27064
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27065
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27067
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 6

    .prologue
    .line 27081
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 27082
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27083
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27084
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27085
    or-int/lit8 v2, v2, 0x1

    .line 27087
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27088
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 27089
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27090
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27092
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Ljava/util/List;)Ljava/util/List;

    .line 27093
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 27094
    or-int/lit8 v2, v2, 0x2

    .line 27096
    :cond_36
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->more_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Z)Z

    .line 27097
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 27098
    or-int/lit8 v2, v2, 0x4

    .line 27100
    :cond_43
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->earliest_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$37002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;J)J

    .line 27101
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 27102
    or-int/lit8 v2, v2, 0x8

    .line 27104
    :cond_50
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->latest_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$37102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;J)J

    .line 27105
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 27106
    or-int/lit8 v2, v2, 0x10

    .line 27108
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$37202(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 27109
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$37302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;I)I

    .line 27110
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 27038
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27040
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27042
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    .line 27044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27045
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    .line 27046
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27047
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    .line 27048
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27049
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 27050
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27051
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 2

    .prologue
    .line 27230
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27231
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27233
    return-object p0
.end method

.method public clearEarliest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3

    .prologue
    .line 27366
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27367
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    .line 27369
    return-object p0
.end method

.method public clearEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 2

    .prologue
    .line 27318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27321
    return-object p0
.end method

.method public clearLatest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3

    .prologue
    .line 27387
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    .line 27390
    return-object p0
.end method

.method public clearMore()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 2

    .prologue
    .line 27345
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    .line 27348
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 2

    .prologue
    .line 27411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27412
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 27414
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3

    .prologue
    .line 27055
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

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
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27211
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27212
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27213
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27214
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27217
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
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 27059
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEarliest()J
    .registers 3

    .prologue
    .line 27357
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    return-wide v0
.end method

.method public getEvent(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 27258
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 27255
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatest()J
    .registers 3

    .prologue
    .line 27378
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    return-wide v0
.end method

.method public getMore()Z
    .registers 2

    .prologue
    .line 27336
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    return v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 27399
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27208
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEarliest()Z
    .registers 3

    .prologue
    .line 27354
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

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

.method public hasLatest()Z
    .registers 3

    .prologue
    .line 27375
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

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

.method public hasMore()Z
    .registers 3

    .prologue
    .line 27333
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 27396
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 27144
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
    .line 27022
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27022
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

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
    .line 27022
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27152
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 27153
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_64

    .line 27158
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 27160
    :sswitch_d
    return-object p0

    .line 27165
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27166
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 27170
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v1

    .line 27171
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27172
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->addEvent(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    goto :goto_0

    .line 27176
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    :sswitch_2a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27177
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    goto :goto_0

    .line 27181
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    goto :goto_0

    .line 27186
    :sswitch_44
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27187
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    goto :goto_0

    .line 27191
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 27192
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 27193
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 27194
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27195
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 27153
    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_2a
        0x20 -> :sswitch_37
        0x28 -> :sswitch_44
        0x30 -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 27114
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27140
    :cond_6
    :goto_6
    return-object p0

    .line 27115
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27116
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 27118
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36800(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 27119
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 27120
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36800(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    .line 27121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27128
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 27129
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getMore()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->setMore(Z)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 27131
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->hasEarliest()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 27132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEarliest()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->setEarliest(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 27134
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->hasLatest()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 27135
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getLatest()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->setLatest(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 27137
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27138
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    goto :goto_6

    .line 27123
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27124
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->access$36800(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27221
    if-nez p1, :cond_8

    .line 27222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27224
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27225
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 27227
    return-object p0
.end method

.method public setEarliest(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27360
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27361
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->earliest_:J

    .line 27363
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 27272
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27273
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27275
    return-object p0
.end method

.method public setEvent(ILcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27262
    if-nez p2, :cond_8

    .line 27263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27265
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->ensureEventIsMutable()V

    .line 27266
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27268
    return-object p0
.end method

.method public setLatest(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27381
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27382
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->latest_:J

    .line 27384
    return-object p0
.end method

.method public setMore(Z)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27339
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27340
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->more_:Z

    .line 27342
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27402
    if-nez p1, :cond_8

    .line 27403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27405
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->bitField0_:I

    .line 27406
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 27408
    return-object p0
.end method
