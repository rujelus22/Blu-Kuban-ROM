.class public final Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callId_:Lcom/google/protobuf/LazyStringList;

.field private clientLoginToken_:Ljava/lang/Object;

.field private endOffset_:J

.field private format_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startOffset_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21145
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21334
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21146
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 21147
    return-void
.end method

.method static synthetic access$24800()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 1

    .prologue
    .line 21140
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 1

    .prologue
    .line 21152
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCallIdIsMutable()V
    .registers 3

    .prologue
    .line 21336
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 21337
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21338
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21340
    :cond_16
    return-void
.end method

.method private ensureFormatIsMutable()V
    .registers 3

    .prologue
    .line 21401
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 21402
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21403
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21405
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21150
    return-void
.end method


# virtual methods
.method public addAllCallId(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 21376
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureCallIdIsMutable()V

    .line 21377
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21379
    return-object p0
.end method

.method public addAllFormat(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 21431
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureFormatIsMutable()V

    .line 21432
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 21434
    return-object p0
.end method

.method public addCallId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21366
    if-nez p1, :cond_8

    .line 21367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21369
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureCallIdIsMutable()V

    .line 21370
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 21372
    return-object p0
.end method

.method public addCallIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21389
    if-nez p1, :cond_8

    .line 21390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21392
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureCallIdIsMutable()V

    .line 21393
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 21395
    return-object p0
.end method

.method public addFormat(I)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21424
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureFormatIsMutable()V

    .line 21425
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21427
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3

    .prologue
    .line 21179
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    .line 21180
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21181
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21183
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 6

    .prologue
    .line 21187
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 21188
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21189
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21190
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21191
    or-int/lit8 v2, v2, 0x1

    .line 21193
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25002(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21194
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 21195
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21197
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21199
    :cond_2b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25102(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 21200
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_45

    .line 21201
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21202
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21204
    :cond_45
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25202(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Ljava/util/List;)Ljava/util/List;

    .line 21205
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_52

    .line 21206
    or-int/lit8 v2, v2, 0x2

    .line 21208
    :cond_52
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->startOffset_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25302(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;J)J

    .line 21209
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5f

    .line 21210
    or-int/lit8 v2, v2, 0x4

    .line 21212
    :cond_5f
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->endOffset_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25402(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;J)J

    .line 21213
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25502(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;I)I

    .line 21214
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 21156
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21158
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21159
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21160
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21162
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21163
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->startOffset_:J

    .line 21164
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21165
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->endOffset_:J

    .line 21166
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21167
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallId()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2

    .prologue
    .line 21382
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21383
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21385
    return-object p0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2

    .prologue
    .line 21317
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21318
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21320
    return-object p0
.end method

.method public clearEndOffset()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3

    .prologue
    .line 21479
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->endOffset_:J

    .line 21482
    return-object p0
.end method

.method public clearFormat()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2

    .prologue
    .line 21437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21438
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21440
    return-object p0
.end method

.method public clearStartOffset()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3

    .prologue
    .line 21458
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21459
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->startOffset_:J

    .line 21461
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3

    .prologue
    .line 21171
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

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
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 21349
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallIdBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 21353
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCallIdCount()I
    .registers 2

    .prologue
    .line 21346
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCallIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21343
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21286
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21287
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21289
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21292
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
    .line 21297
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21298
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21299
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21301
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21304
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2

    .prologue
    .line 21175
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEndOffset()J
    .registers 3

    .prologue
    .line 21470
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->endOffset_:J

    return-wide v0
.end method

.method public getFormat(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 21414
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFormatCount()I
    .registers 2

    .prologue
    .line 21411
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFormatList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21408
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 21449
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->startOffset_:J

    return-wide v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21283
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEndOffset()Z
    .registers 3

    .prologue
    .line 21467
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

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

.method public hasStartOffset()Z
    .registers 3

    .prologue
    .line 21446
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

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
    .line 21254
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21256
    const/4 v0, 0x0

    .line 21258
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 21218
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21250
    :cond_6
    :goto_6
    return-object p0

    .line 21219
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21220
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21221
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25000(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21224
    :cond_19
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25100(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 21225
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 21226
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25100(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 21227
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21234
    :cond_37
    :goto_37
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25200(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 21235
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 21236
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25200(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    .line 21237
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21244
    :cond_55
    :goto_55
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->hasStartOffset()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 21245
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->setStartOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 21247
    :cond_62
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->hasEndOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21248
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getEndOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->setEndOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    goto :goto_6

    .line 21229
    :cond_70
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureCallIdIsMutable()V

    .line 21230
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25100(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 21239
    :cond_7d
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureFormatIsMutable()V

    .line 21240
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->access$25200(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_55
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21265
    const/4 v2, 0x0

    .line 21267
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 21272
    if-eqz v2, :cond_10

    .line 21273
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 21276
    :cond_10
    return-object p0

    .line 21268
    :catch_11
    move-exception v1

    .line 21269
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-object v2, v0

    .line 21270
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 21272
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 21273
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

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
    .line 21140
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21140
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

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
    .line 21140
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCallId(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21357
    if-nez p2, :cond_8

    .line 21358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21360
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureCallIdIsMutable()V

    .line 21361
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21363
    return-object p0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21308
    if-nez p1, :cond_8

    .line 21309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21311
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21312
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21314
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21324
    if-nez p1, :cond_8

    .line 21325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21327
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21328
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 21330
    return-object p0
.end method

.method public setEndOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21473
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21474
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->endOffset_:J

    .line 21476
    return-object p0
.end method

.method public setFormat(II)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 21418
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->ensureFormatIsMutable()V

    .line 21419
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->format_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21421
    return-object p0
.end method

.method public setStartOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21452
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->bitField0_:I

    .line 21453
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->startOffset_:J

    .line 21455
    return-object p0
.end method
