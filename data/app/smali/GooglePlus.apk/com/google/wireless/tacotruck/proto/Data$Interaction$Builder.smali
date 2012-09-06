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
    .line 24836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25001
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 25025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 25103
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 24837
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->maybeForceBuilderInitialization()V

    .line 24838
    return-void
.end method

.method static synthetic access$33200()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 1

    .prologue
    .line 24831
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 1

    .prologue
    .line 24843
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNameIsMutable()V
    .registers 3

    .prologue
    .line 25105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 25106
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25107
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25109
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24841
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
    .line 25141
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 25142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 25144
    return-object p0
.end method

.method public addName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25131
    if-nez p1, :cond_8

    .line 25132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25134
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 25135
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 25137
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 3

    .prologue
    .line 24870
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    .line 24871
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24872
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24874
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 6

    .prologue
    .line 24888
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 24889
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24890
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24891
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24892
    or-int/lit8 v2, v2, 0x1

    .line 24894
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33402(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24895
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24896
    or-int/lit8 v2, v2, 0x2

    .line 24898
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33502(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24899
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 24900
    or-int/lit8 v2, v2, 0x4

    .line 24902
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->date_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33602(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J

    .line 24903
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 24904
    or-int/lit8 v2, v2, 0x8

    .line 24906
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33702(Lcom/google/wireless/tacotruck/proto/Data$Interaction;J)J

    .line 24907
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 24908
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 24910
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24912
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33802(Lcom/google/wireless/tacotruck/proto/Data$Interaction;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 24913
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33902(Lcom/google/wireless/tacotruck/proto/Data$Interaction;I)I

    .line 24914
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 24847
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24848
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 24849
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 24851
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24852
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 24853
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24854
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 24855
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24856
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 24857
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24858
    return-object p0
.end method

.method public clearDate()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 25075
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25076
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 25078
    return-object p0
.end method

.method public clearDuration()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 25096
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25097
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 25099
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 25147
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25148
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25150
    return-object p0
.end method

.method public clearNumber()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 25049
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25050
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 25052
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 2

    .prologue
    .line 25018
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25019
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->INCOMING_CALL:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 25021
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3

    .prologue
    .line 24862
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
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 25066
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 2

    .prologue
    .line 24866
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 25087
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 25118
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 25115
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
    .line 25112
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25030
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 25031
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25033
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 25036
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
    .line 25006
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    return-object v0
.end method

.method public hasDate()Z
    .registers 3

    .prologue
    .line 25063
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
    .line 25084
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
    .line 25027
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

    .line 25003
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 24945
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
    .line 24831
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24831
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

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
    .line 24831
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
    .line 24953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24954
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 24959
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24961
    :sswitch_d
    return-object p0

    .line 24966
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24967
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    move-result-object v2

    .line 24968
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    if-eqz v2, :cond_0

    .line 24969
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24970
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    goto :goto_0

    .line 24975
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24976
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 24980
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24981
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    goto :goto_0

    .line 24985
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 24986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    goto :goto_0

    .line 24990
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 24991
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 24954
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
    .line 24918
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24941
    :cond_6
    :goto_6
    return-object p0

    .line 24919
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24920
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getType()Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 24922
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24923
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 24925
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 24926
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setDate(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 24928
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 24929
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;

    .line 24931
    :cond_3b
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33800(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24932
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 24933
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33800(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 24934
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    goto :goto_6

    .line 24936
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 24937
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Interaction;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Interaction;->access$33800(Lcom/google/wireless/tacotruck/proto/Data$Interaction;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setDate(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 25069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25070
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->date_:J

    .line 25072
    return-object p0
.end method

.method public setDuration(J)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 25090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25091
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->duration_:J

    .line 25093
    return-object p0
.end method

.method public setName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 25122
    if-nez p2, :cond_8

    .line 25123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25125
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->ensureNameIsMutable()V

    .line 25126
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25128
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25040
    if-nez p1, :cond_8

    .line 25041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25043
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25044
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->number_:Ljava/lang/Object;

    .line 25046
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;)Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25009
    if-nez p1, :cond_8

    .line 25010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25012
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->bitField0_:I

    .line 25013
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Interaction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Interaction$Type;

    .line 25015
    return-object p0
.end method
