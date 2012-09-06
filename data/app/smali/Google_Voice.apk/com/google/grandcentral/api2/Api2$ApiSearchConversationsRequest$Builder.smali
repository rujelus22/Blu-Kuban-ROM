.class public final Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private limit_:I

.field private locale_:Ljava/lang/Object;

.field private offset_:I

.field private query_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private wantTranscript_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15078
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15352
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    .line 15394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15079
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 15080
    return-void
.end method

.method static synthetic access$17700()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 15073
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 15085
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15083
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3

    .prologue
    .line 15116
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    .line 15117
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15118
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15120
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 6

    .prologue
    .line 15124
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 15125
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15126
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15127
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15128
    or-int/lit8 v2, v2, 0x1

    .line 15130
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$17902(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15131
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15132
    or-int/lit8 v2, v2, 0x2

    .line 15134
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18002(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15135
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15136
    or-int/lit8 v2, v2, 0x4

    .line 15138
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->offset_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18102(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I

    .line 15139
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15140
    or-int/lit8 v2, v2, 0x8

    .line 15142
    :cond_35
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18202(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I

    .line 15143
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 15144
    or-int/lit8 v2, v2, 0x10

    .line 15146
    :cond_42
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->wantTranscript_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18302(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Z)Z

    .line 15147
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 15148
    or-int/lit8 v2, v2, 0x20

    .line 15150
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18402(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15151
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 15152
    or-int/lit8 v2, v2, 0x40

    .line 15154
    :cond_5c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18502(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15155
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18602(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I

    .line 15156
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15089
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15090
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15091
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15093
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15094
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->offset_:I

    .line 15095
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15096
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    .line 15097
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15098
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->wantTranscript_:Z

    .line 15099
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15101
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15103
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15104
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15261
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15262
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15264
    return-object p0
.end method

.method public clearLimit()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15366
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15367
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    .line 15369
    return-object p0
.end method

.method public clearLocale()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15483
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15484
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15486
    return-object p0
.end method

.method public clearOffset()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15345
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15346
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->offset_:I

    .line 15348
    return-object p0
.end method

.method public clearQuery()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15314
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15315
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15317
    return-object p0
.end method

.method public clearTimezone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15430
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15431
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15433
    return-object p0
.end method

.method public clearWantTranscript()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15387
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->wantTranscript_:Z

    .line 15390
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3

    .prologue
    .line 15108
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

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
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15230
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15231
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15232
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15233
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15236
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15241
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15242
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15243
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15245
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15248
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2

    .prologue
    .line 15112
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15073
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 15357
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15452
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15453
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15454
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15455
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15458
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

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15463
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15464
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15465
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15467
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15470
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

.method public getOffset()I
    .registers 2

    .prologue
    .line 15336
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->offset_:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15283
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15284
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15285
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15286
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15289
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

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15294
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15295
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15296
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15298
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15301
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

.method public getTimezone()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15399
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15400
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15402
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15405
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

.method public getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15410
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15411
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15412
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15414
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15417
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

.method public getWantTranscript()Z
    .registers 2

    .prologue
    .line 15378
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->wantTranscript_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15227
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLimit()Z
    .registers 3

    .prologue
    .line 15354
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public hasLocale()Z
    .registers 3

    .prologue
    .line 15449
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 15333
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 15280
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public hasTimezone()Z
    .registers 3

    .prologue
    .line 15396
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public hasWantTranscript()Z
    .registers 3

    .prologue
    .line 15375
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 15194
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 15202
    :cond_7
    :goto_7
    return v0

    .line 15198
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15202
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 15160
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15190
    :cond_6
    :goto_6
    return-object p0

    .line 15161
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15162
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15163
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$17900(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15166
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 15167
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15168
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18000(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15171
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 15172
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 15174
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 15175
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 15177
    :cond_45
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasWantTranscript()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 15178
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getWantTranscript()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 15180
    :cond_52
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 15181
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15182
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18400(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15185
    :cond_64
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15186
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15187
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->access$18500(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15209
    const/4 v2, 0x0

    .line 15211
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 15216
    if-eqz v2, :cond_10

    .line 15217
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 15220
    :cond_10
    return-object p0

    .line 15212
    :catch_11
    move-exception v1

    .line 15213
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-object v2, v0

    .line 15214
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 15216
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 15217
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    :cond_21
    throw v3
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
    .line 15073
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15073
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

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
    .line 15073
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15252
    if-nez p1, :cond_8

    .line 15253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15255
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15256
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15258
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15268
    if-nez p1, :cond_8

    .line 15269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15271
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15272
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 15274
    return-object p0
.end method

.method public setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15360
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15361
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->limit_:I

    .line 15363
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15474
    if-nez p1, :cond_8

    .line 15475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15477
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15478
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15480
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15490
    if-nez p1, :cond_8

    .line 15491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15493
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15494
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->locale_:Ljava/lang/Object;

    .line 15496
    return-object p0
.end method

.method public setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15339
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15340
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->offset_:I

    .line 15342
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15305
    if-nez p1, :cond_8

    .line 15306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15308
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15309
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15311
    return-object p0
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15321
    if-nez p1, :cond_8

    .line 15322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15324
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15325
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->query_:Ljava/lang/Object;

    .line 15327
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15421
    if-nez p1, :cond_8

    .line 15422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15424
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15425
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15427
    return-object p0
.end method

.method public setTimezoneBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15437
    if-nez p1, :cond_8

    .line 15438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15440
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15441
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 15443
    return-object p0
.end method

.method public setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15381
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->bitField0_:I

    .line 15382
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->wantTranscript_:Z

    .line 15384
    return-object p0
.end method
