.class public final Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Interaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
        "Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private date_:J

.field private duration_:J

.field private name_:Lcom/google/protobuf/LazyStringList;

.field private number_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23099
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23264
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 23288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23366
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23100
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->maybeForceBuilderInitialization()V

    .line 23101
    return-void
.end method

.method static synthetic access$31100()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 1

    .prologue
    .line 23094
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 1

    .prologue
    .line 23106
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNameIsMutable()V
    .registers 3

    .prologue
    .line 23368
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 23369
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23372
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23104
    return-void
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;"
        }
    .end annotation

    .prologue
    .line 23404
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 23405
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23407
    return-object p0
.end method

.method public addName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23394
    if-nez p1, :cond_8

    .line 23395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23397
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 23398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23400
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 3

    .prologue
    .line 23133
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    .line 23134
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23135
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23137
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 6

    .prologue
    .line 23151
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 23152
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23153
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23154
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23155
    or-int/lit8 v2, v2, 0x1

    .line 23157
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31302(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 23158
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23159
    or-int/lit8 v2, v2, 0x2

    .line 23161
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31402(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23162
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23163
    or-int/lit8 v2, v2, 0x4

    .line 23165
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31502(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J

    .line 23166
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 23167
    or-int/lit8 v2, v2, 0x8

    .line 23169
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31602(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J

    .line 23170
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 23171
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23173
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23175
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31702(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 23176
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31802(Lcom/google/wireless/tacotruck/proto/Data$Interaction;I)I

    .line 23177
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 23110
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 23112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23115
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 23116
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23117
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 23118
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23119
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23120
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23121
    return-object p0
.end method

.method public clearDate()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 23338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 23341
    return-object p0
.end method

.method public clearDuration()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 23359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 23362
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 23410
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23413
    return-object p0
.end method

.method public clearNumber()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 23312
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23315
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 23281
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23282
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 23284
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 23125
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

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
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 23329
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23094
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 2

    .prologue
    .line 23129
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 23350
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23381
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 23378
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
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
    .line 23375
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23293
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23294
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23295
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23296
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23299
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    .registers 2

    .prologue
    .line 23269
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object v0
.end method

.method public hasDate()Z
    .registers 3

    .prologue
    .line 23326
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

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

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 23347
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

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

.method public hasNumber()Z
    .registers 3

    .prologue
    .line 23290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23266
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

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
    .line 23094
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

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
    .line 23094
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23217
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 23222
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23224
    :sswitch_d
    return-object p0

    .line 23229
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23230
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    move-result-object v2

    .line 23231
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    if-eqz v2, :cond_0

    .line 23232
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23233
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_0

    .line 23238
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23239
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 23243
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23244
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    goto :goto_0

    .line 23248
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23249
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    goto :goto_0

    .line 23253
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 23254
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 23217
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x2a -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 23181
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23204
    :cond_6
    :goto_6
    return-object p0

    .line 23182
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23183
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 23185
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23186
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 23188
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 23189
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setDate(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 23191
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 23192
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 23194
    :cond_3b
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31700(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23195
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 23196
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31700(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 23197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    goto :goto_6

    .line 23199
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 23200
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$31700(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setDate(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23333
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 23335
    return-object p0
.end method

.method public setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23353
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23354
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 23356
    return-object p0
.end method

.method public setName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23385
    if-nez p2, :cond_8

    .line 23386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23388
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 23389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23391
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23303
    if-nez p1, :cond_8

    .line 23304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23306
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23307
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 23309
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23272
    if-nez p1, :cond_8

    .line 23273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23275
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 23276
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 23278
    return-object p0
.end method
